import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.dart';

List imagesList = [
  "https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aG90ZWx8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1563911302283-d2bc129e7570?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhvdGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDV8fGhvdGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1551918120-9739cb430c6d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTl8fGhvdGVsfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
];

void main(List<String> args) {
  runApp(MaterialApp(home: GofastLoginPage()));
}

class GofastLoginPage extends StatelessWidget {
  static String id = 'gofast_loginpage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            const Flexible(
              child: Center(
                child: Image(
                    width: 150,
                    image: NetworkImage(
                        'https://cdn0.iconfinder.com/data/icons/hexagone-business-finance-set-1/128/FLIGHT-128.png')),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GofastHomeScreen(),
                      ));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff2d8ab5)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: const Text(
                  'Login In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                '- or -',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff2d8ab5)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Loginin with Facebook',
                      style: TextStyle(fontSize: 14),
                    ),
                    Icon(Icons.facebook)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff2d8ab5)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Loginin with Twitter',
                      style: TextStyle(fontSize: 14),
                    ),
                    FaIcon(FontAwesomeIcons.twitter)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff2d8ab5)),
                  shape: MaterialStateProperty.all<StadiumBorder>(
                    const StadiumBorder(
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Loginin with Google  ',
                      style: TextStyle(fontSize: 14),
                    ),
                    FaIcon(FontAwesomeIcons.google)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
