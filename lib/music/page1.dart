import 'package:appp_work_1/music/page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List musicpic = [
  "https://images.unsplash.com/photo-1531463368359-151247409561?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJpbGxpZSUyMGVpbGlzaCUyMHNpbmclMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1468141589425-dcddef77ddad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZW5nbGlzaCUyMHNpbmdlciUyMGFsYnVtfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1533584592871-abb80e6e4ea2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGFzZXRoZXRpYyUyMHBpY3R1cmUlMjBzaW5nZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1437855144889-40d3933d96a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhbW91cyUyMGVuZ2xpc2glMjBzaW5nZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1576838202636-d60ff3ee1fe0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fGZhbW91cyUyMGVuZ2xpc2glMjBzaW5nZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1647968678725-5bf93bf20a10?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGJpbGxpZSUyMGVpbGlzaHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1508695666381-69deeaa78ccb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmlsbGllJTIwZWlsaXNoJTIwc2luZyUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1526218626217-dc65a29bb444?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8YmlsbGllJTIwZWlsaXNoJTIwc2luZyUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1529354235303-cc42f23d767a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTJ8fGFzZXRoZXRpYyUyMHBpY3R1cmUlMjBzaW5nZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZW5nbGlzaCUyMG11c2ljJTIwYWxidW18ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
];

void main() {
  runApp(MaterialApp(
    home: musicApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class musicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 24, 24),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 24, 24, 24),
            title: Center(
              child: Text(
                "Playlists",
                style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                        fontSize: 26,
                        color: Color.fromARGB(255, 249, 159, 189)),
                    fontWeight: FontWeight.w600),
              ),
            ),
            bottom: AppBar(
              backgroundColor: const Color.fromARGB(255, 24, 24, 24),
              elevation: 0,
              title: SizedBox(
                height: 55,
                width: 510,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 48, 47, 47),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(24)),
                        hintText: "Search...",
                        hintStyle: GoogleFonts.tajawal(
                            fontSize: 21,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 249, 159, 189)),
                        suffixIcon: Icon(Icons.search),
                        suffixIconColor: Color.fromARGB(255, 249, 159, 189)),
                  ),
                ),
              ),
            )),
        body: ListView(
          children: [
            GridView.builder(
              shrinkWrap: true,
              itemCount: musicpic.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                      right: 20,
                    ),
                    child: Center(
                      child: Container(
                        height: 220,
                        width: 220,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(musicpic[index]),
                              fit: BoxFit.cover),
                          border: Border.all(style: BorderStyle.solid),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 249, 159, 189),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 249, 159, 189),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => musicapp2())),
                  child: Icon(
                    Icons.playlist_add,
                    color: Color.fromARGB(255, 249, 159, 189),
                  ),
                ),
                label: 'Playlist',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 249, 159, 189),
                ),
                label: "Favoute",
              )
            ]),
      ),
    );
  }
}


// SizedBox(
//             height: 55,
//             width: 510,
//             child: Padding(
//               padding: const EdgeInsets.only(right: 20, left: 20),
//               child: TextField(
//                 decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color.fromARGB(255, 48, 47, 47),
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(),
//                         borderRadius: BorderRadius.circular(24)),
//                     hintText: "search...",
//                     hintStyle: GoogleFonts.tajawal(
//                         fontSize: 21,
//                         fontWeight: FontWeight.w300,
//                         color: Color.fromARGB(255, 249, 159, 189)),
//                     suffixIcon: Icon(Icons.search),
//                     suffixIconColor: Color.fromARGB(255, 249, 159, 189)),
//               ),
//             ),
//           ),,