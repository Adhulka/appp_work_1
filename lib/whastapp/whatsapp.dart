import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: whatsapp(),
  ));
}

class whatsapp extends StatelessWidget {
  var whatsname = [
    "Luminar",
    "wipro client",
    "sudhar pichai",
    "Google compy",
    "Sreedevi miss",
    "ali BaBa",
    "Tesla",
    "samsung",
    "Apple",
    "infosys",
    "Alphabet",
    "youtube",
  ];
  var whatspics = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROkr6oLrp3zmc_pMoq54xXINNE7HL_TL1PKw&usqp=CAU",
    "https://media.gettyimages.com/id/1236251688/photo/wipro-logo-displayed-on-a-phone-screen-and-a-laptop-keyboard-are-seen-in-this-illustration.jpg?s=612x612&w=0&k=20&c=IYVlJa_ZSbwGQoK-Uen4GApTjt9HMst4_7iLjTja77g=",
    "https://media.gettyimages.com/id/1147600063/photo/google-ceo-sundar-pichai-delivers-the-keynote-address-at-the-2019-google-i-o-conference-at.jpg?s=612x612&w=0&k=20&c=VHe1khjaASqKLgc7law-yjcczmGBRIfViRnGmxGFtc0=",
    "https://images.unsplash.com/photo-1529612700005-e35377bf1415?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z29vZ2xlJTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1600199851102-e156981211a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z3JpbHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1617724054780-ef6bd6b21e17?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWxpYmFiYSUyMG93bmVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1612810806695-30f7a8258391?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dGVzbGElMjBsb2dvfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1661347998423-b15d37d6f61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2Ftc3VuZyUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1621768216002-5ac171876625?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXBwbGUlMjBsb2dvfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1619551734325-81aaf323686c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGluZm9zeXMlMjBjb21wYW55JTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1611176346948-a19de4f62140?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWxwaGElMjBjb21wYW55JTIwbG9nb3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1611162616475-46b635cb6868?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8eW91dHViZSUyMGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  ];
  var whatsmess = [
    "are you completed the work?.....",
    "can you join wipro ",
    "hey!,how are you bro",
    "i offer you 1CR",
    "adhul enthayi new company",
    "you got a email from ali baba..",
    "i want to a mobile application",
    "adhul,join samsung",
    "232k salary",
    "we providing family packages",
    "hello adhul,you app is top noch",
    "i got the diamond play button",
  ];
  var whatstime = [
    "10:24",
    "11:54",
    "12:04",
    "1:42",
    "2:09",
    "3:29",
    "3:45",
    "4:31",
    "7:54",
    "8:11",
    "9:37",
    "9:59",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.message,
          ),
          backgroundColor: Colors.green,
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(tabs: [
            Icon(Icons.people_outline_outlined),
            Text("Chats"),
            Text("status"),
            Text("Calls")
          ]),
          title: Text("WhatsApp"),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return Center(
            child: ListTile(
              title: Text(whatsname[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(whatspics[index]),
              ),
              subtitle: Text(whatsmess[index]),
              trailing: Text(whatstime[index]),
            ),
          );
        }),
      ),
    );
  }
}
