import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: bottomsheet(),
  ));
}

class bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: GestureDetector(
            onLongPress: () => showsheet(context),
            child: Icon(
              Icons.share,
              size: 50,
              color: Colors.blueAccent,
            )),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.green,
                  ),
                  title: Text("whatsapp"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.instagram),
                  title: Text("instagram"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.facebook),
                  title: Text("facebook"),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.twitter),
                  title: Text("twitter"),
                ),
              ],
            ),
          );
        });
  }
}
