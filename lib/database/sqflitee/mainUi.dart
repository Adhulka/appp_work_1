import 'package:appp_work_1/database/sqflitee/sqffunction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isloding = true;
  // to fetch data from sqflite
  List<Map<String, dynamic>> contact = [];

  @override
  void initState() {
    refreshUi();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My contact")),
      body: isloding
          ? Center(
              child: CircularProgressIndicator(
              color: Color.fromARGB(255, 220, 5, 235),
            ))
          : ListView.builder(
              itemCount: contact.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(contact[index]['cname']),
                    subtitle: Text(contact[index]['cnumber']),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                showsheet(contact[index]["id"]);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                deleteContacts(contact[index]["id"]);
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showsheet(null),
        child: Icon(Icons.add),
      ),
    );
  }

  final namecontoller = TextEditingController();
  final numcontroller = TextEditingController();
  void showsheet(int? id) async {
    if (id != null) {
      final existingData = contact.firstWhere((element) => element['id'] == id);
      namecontoller.text = existingData['cname'];
      numcontroller.text = existingData['cnumber'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: namecontoller,
                    decoration: InputDecoration(hintText: "contact name"),
                  ),
                  SizedBox(height: 1),
                  TextField(
                    controller: numcontroller,
                    decoration: InputDecoration(hintText: "contact number"),
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await createContact();
                        }
                        if (id != null) {}
                        namecontoller.text = "";
                        numcontroller.text = "";
                        Navigator.of(context).pop();
                      },
                      child: (id == null)
                          ? Text("create Contact")
                          : Text("update contact"))
                ],
              ),
            ));
  }

  Future<void> createContact() async {
    await sqlhelper.create_contact(namecontoller.text, numcontroller.text);
    refreshUi();
  }

  ///refreshed ui when the contact added/delete/update..

  void refreshUi() async {
    final data = await sqlhelper.getDatas();
    setState(() {
      contact = data;
      isloding = false;
    });
  }

  Future<void> updatecontact(int id) async {
    await sqlhelper.updatecontact(id, namecontoller.text, numcontroller.text);
    refreshUi();
  }

  void deleteContacts(int id) async {
    await sqlhelper.deleteContact(id);
    refreshUi();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("successfully deleted")));
  }
}
