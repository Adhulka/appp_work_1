import 'package:appp_work_1/music/page1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List mucis2pics = [
  "https://images.unsplash.com/photo-1529912626516-e58b23f44f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXN0aGV0aWMlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1502899576159-f224dc2349fa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fGFzdGhldGljJTIwd2FsbHBhcGVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1668929816738-9e75e77d66fd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAzfHxhc3RoZXRpYyUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1659875245790-ced550d99305?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTExfHxhc3RoZXRpYyUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1679478238688-74b5a2354903?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTcyfHxhc3RoZXRpYyUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1669446605793-24bdd2890af5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTkzfHxhc3RoZXRpYyUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1546471180-335a013cb87b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjU4fHxhc3RoZXRpYyUyMHdhbGxwYXBlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
];
List music2gridpic = [
  "https://images.unsplash.com/photo-1579725854926-dbeab39780bc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YWxvbmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1531521941466-857977016215?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGFsb25lfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1660809191131-109b82eba8c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGNhciUyMHBpY3R1cmVzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1524201862652-0d3d485d6d07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3RhZ2UlMjBwZXJmb3JtYW5jZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1524650359799-842906ca1c06?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHNpbmdlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1504215680853-026ed2a45def?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y2FyJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1612785922922-4c2907d1cb49?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fGFsb25lfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1581425157521-c2948bde6614?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cmlkaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1600497934937-2d02ebad5da3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHJpZGluZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1595472167710-b7981145611d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTN8fHJpZGluZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
];

List music2cardlist = [
  "https://images.unsplash.com/photo-1516916759473-600c07bc12d4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWMlMjBhbGJ1bSUyMGNvdmVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1575248667635-8202792796e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzR8fG11c2ljJTIwYWxidW0lMjBjb3ZlcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1549490349-8643362247b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA4fHxtdXNpYyUyMGFsYnVtJTIwY292ZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1515865402315-464899f77ece?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTg5fHxtdXNpYyUyMGFsYnVtJTIwY292ZXJ8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1450133064473-71024230f91b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjN8fHNoYWRvdyUyMG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1503354531728-dedfa6cb4e8d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTh8fHNoYWRvdyUyMG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1612633974558-5925b621a8b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjV8fHNoYWRvdyUyMG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1627615608004-f6fba8eca2a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTB8fHNoYWRvdyUyMG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1626934457735-5d3d121b1ccb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTZ8fHNoYWRvdyUyMG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
];
List cardname1 = [
  "Hero",
  "unholy",
  "Lift me up",
  "Depression",
  "im Good",
  "Bad Night",
  "Walk in the Moon",
  "Shit!",
  "Fu*k bitch"
];
List cardname2 = [
  "Taylor",
  "swift",
  "sam smith",
  "kim petras",
  "xxxtenction",
  "Devid Guetta",
  "Aysha",
  "yoshark",
  "Tufxer"
];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: musicapp2(),
  ));
}

class musicapp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        title: Center(
          child: Text(
            "Musify.",
            style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    color: Color.fromARGB(255, 243, 118, 159))),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 13),
              child: Text("Suggested playlists",
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: const Color.fromARGB(255, 243, 118, 159)))),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  music2gridpic.length,
                  (index) => Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      color: const Color.fromARGB(255, 30, 30, 30),
                      height: 170,
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [],
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(music2gridpic[index]),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 4),
              child: Text(
                "Recommended for you",
                style: GoogleFonts.ubuntu(
                    color: const Color.fromARGB(255, 243, 118, 159),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 260,
              child: ListView.builder(
                itemCount: music2cardlist.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: const Color.fromARGB(255, 30, 30, 30),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          cardname1[index],
                          style: TextStyle(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 243, 118, 159),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Text(
                          cardname2[index],
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 234, 233, 234)),
                        ),
                      ),
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(music2cardlist[index]),
                              fit: BoxFit.cover),
                        ),
                      ),
                      trailing: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.star_border,
                              color: const Color.fromARGB(255, 243, 118, 159),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.download_outlined,
                              color: const Color.fromARGB(255, 243, 118, 159),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => musicApp())),
                child: Icon(
                  Icons.home,
                  color: const Color.fromARGB(255, 243, 118, 159),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 243, 118, 159),
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.save,
                  color: Color.fromARGB(255, 243, 118, 159),
                ),
                label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_horiz_outlined,
                  color: Color.fromARGB(255, 243, 118, 159),
                ),
                label: 'More')
          ]),
    );
  }
}
