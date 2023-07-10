// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: mainpage(),));
// }

// class mainpage extends StatelessWidget {
//   var mylist = [];
//   var movies = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("movies"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Column(
//           children: [
//             ElevatedButton.icon(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder:(context)=>wishlist())))
//               },
//               icon: Icon(Icons.favorite),
//               label: Text("myfav ${mylist.length}"),
//             ),
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: movies.length,
//                     itemBuilder: (context, index) {
//                       final currentmovie = movies[index];
//                       return Card(
//                         child: ListTile(
//                           title: Text(''),
//                           subtitle: Text(''),
//                           trailing: Icon(
//                             Icons.favorite,
//                             color: mylist.contains(currentmovie)?Colors.red:Colors.white,
                            
//                           ),
//                         ),
//                       );
//                     }))
//           ],
//         ),
//       ),
//     );
//   }
// }
