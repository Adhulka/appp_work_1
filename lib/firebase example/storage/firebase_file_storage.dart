import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: firebase_storee(),
  ));
}

class firebase_storee extends StatefulWidget {
  const firebase_storee({super.key});

  @override
  State<firebase_storee> createState() => _firebase_storeeState();
}

class _firebase_storeeState extends State<firebase_storee> {
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image Store"),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () => uploadData('camera'),
                  icon: Icon(Icons.camera),
                  label: Text("camera"),
                ),
                ElevatedButton.icon(
                    onPressed: () => uploadData('gallery'),
                    icon: Icon(Icons.photo_library),
                    label: Text("Gallery")),
              ],
            ),
            Expanded(
                child: FutureBuilder(
                    future: loadData(),
                    builder: (context,
                        AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                            itemCount: snapshot.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              final Map<String, dynamic> images =
                                  snapshot.data![index];
                              // final images = snapshot.data![index];
                              return Card(
                                child: ListTile(
                                  leading: Image.network(images['url']),
                                  title: Text(images['description']),
                                  subtitle: Text(images['uploaded_by']),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete)),
                                ),
                              );
                            });
                      }
                      return Center(child: CircularProgressIndicator());
                    }))
          ],
        ),
      ),
    );
  }

  Future<List<Map<String, dynamic>>> loadData() async {
    List<Map<String, dynamic>> images = [];
    final ListResult listResult = await firebaseStorage.ref().list();
    final List<Reference> allfiles = listResult.items;
    await Future.forEach(allfiles, (sfile) async {
      final String url = await sfile.getDownloadURL();
      final FullMetadata metadata = await sfile.getMetadata();
      images.add({
        'url': url,
        'path': sfile.fullPath,
        'uploaded_by': metadata.customMetadata?['uploaded_by'] ?? 'nobody',
        'description':
            metadata.customMetadata?['description'] ?? 'no description'
      });
    });
    return images;
  }

  Future<void> uploadData(String imagepath) async {
    final picker = ImagePicker();
    XFile? pickedimage;
    try {
      pickedimage = await picker.pickImage(
          source:
              imagepath == 'camera' ? ImageSource.camera : ImageSource.gallery,
          maxWidth: 1920);
      final String fileName = path.basename(pickedimage!.path);
      File imageFile = File(pickedimage.path);
      try {
        await firebaseStorage.ref(fileName).putFile(
            imageFile,
            SettableMetadata(customMetadata: {
              'description': 'its',
              'uploaded_by': 'some description'
            }));
      } on FirebaseException {}
    } on FirebaseException catch (error) {
      print(error);
    }
  }

  Catch(e) {
    print("exception $e");
  }
}
