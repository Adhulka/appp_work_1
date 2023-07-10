import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

List names = ["vegetables", "fruits", "nuts", "biscult", "sweet", "spices"];

List picturess = [
  "https://c4.wallpaperflare.com/wallpaper/642/840/7/wheat-greens-lemon-mushrooms-wallpaper-preview.jpg",
  "https://images3.alphacoders.com/109/thumbbig-1094445.webp",
  "https://images7.alphacoders.com/109/thumbbig-1095275.webp",
  "https://images.unsplash.com/photo-1445282768818-728615cc910a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHZlZ2V0YWJsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1613747495731-3add0988073a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJpdXRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1507844090982-e6e9452ea68d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzB8fHZlZ2V0YWJsZXMlMjAlMjBsYW5kc2lkZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
];

List grid1 = [
  "https://t3.ftcdn.net/jpg/04/59/40/84/240_F_459408462_RxzJ5KgJHnCXpka7c4y88WpnRjhLuq6y.jpg",
  "https://t3.ftcdn.net/jpg/00/34/61/76/240_F_34617669_p9r4GrR83TBEXCZrRny6AaigqPUEPFp5.jpg",
  "https://t4.ftcdn.net/jpg/00/93/86/49/240_F_93864955_0axUkp9uQ7n8n6qbr6xjR9DShQ6FrfFi.jpg",
  "https://t3.ftcdn.net/jpg/03/29/16/92/240_F_329169218_1sEqHb4QVlbYFNw0jJLgxHLdyQxYVX1N.jpg",
  "https://t3.ftcdn.net/jpg/02/99/43/48/240_F_299434842_UF1e0k44KUpkdtAEu0XbbPVnTHFuRwAm.jpg",
  "https://t3.ftcdn.net/jpg/05/91/02/14/240_F_591021415_KuRkpph745yDjH3LVM64cNi2rq0skyn5.jpg",
  "https://t3.ftcdn.net/jpg/04/27/90/02/240_F_427900238_IWYhz1f4iaKV9tje0PpvZGc9VK5MJrnS.jpg",
  "https://t3.ftcdn.net/jpg/03/21/34/26/240_F_321342613_tX7IK69S1SK3XD3ZzWQUnaaDW36jR2nA.jpg",
  "https://t3.ftcdn.net/jpg/05/84/49/44/240_F_584494479_Uf7dw4YwDKnD7LGaokW390I3tYEs0lID.jpg",
];

List grid2 = [
  "https://images.unsplash.com/photo-1626846661139-5c4fbd66cbd1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNhcnJvdCUyMHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1444731961956-751ed90465a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHRvbWF0byUyMHZlZ2V0YWJsZXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1583663848850-46af132dc08e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fGJyb2NvbGxpJTIwdmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1601600659891-b63ffda67f74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmFuYW5hJTIwdmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
];

List text1 = [
  "offers",
  "Vegetables",
  "fruits",
  "exotic",
  "fresh cuts",
  "nutrition",
  "fav veg",
  "gourment salad",
  "pack",
];

List productitems = [
  "Carrot",
  "Tomato",
  "Brocolli",
  "Banana",
];

List price = ["₹ 34", "₹ 26", "₹ 106", "₹ 43"];

List kg = [
  "500 Kg",
  "500 Kg",
  "1 Kg",
  "500 kg",
];
List eleADD = [
  "ADD",
];
var OBPpics = [
  "https://images.unsplash.com/photo-1615486511484-92e172cc4fe0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29udHJvbCUyMGJsb29kJTIwcHJlc3N1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1615485291234-9d694218aeb3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fGJyb2NvbGl8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1578357078586-491adf1aa5ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aGVscCUyMHRvJTIwY2hpbGRyZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
  "https://plus.unsplash.com/premium_photo-1664301795911-4624bc80d696?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGhlYXJ0JTIwYXR0YWNrfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1472162072942-cd5147eb3902?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGRvY3RvciUyMGhlbHBpbmclMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60",
];
List OBPTEXT = [
  "Control BP",
  "5 Reasons using vegetables",
  "Helping peoples",
  "Make best vegetables",
  "Best growing generation"
];
List OBPtimes = [
  "6 months ago",
  "5 months ago",
  "4 months ago",
  "2 months ago",
  "15 days ago",
];

List custpic = [
  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cGVyc29ufGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
];
List custname = [
  "Rahul V.R",
  "hrithin",
  "Saheed",
  "Adhul K.A",
];
List custjob = ["Flutter job", "Angular", "Web developer", "ChatGPT prompter"];
List custreviews = [
  "i go pass the market everyday back form work and its amazing to see the colorful fruits and veggies and the numerous vendors. when you begin to the enter the lane, there are many flower shops catering to mainly South Indian garlands and they also do decorations for vehicles during weddings. a little further in, the fruit sellers start and then finally all the vegetable vendors sit.",
  "I have been a Mumbaiite all my life....Have known of Matunga as 'Mini Madras' and relished on RamaNayak and Madras cafe food all during my college days. And yet found this 'hop on India' walk enlightening. The stories behind some of the legendary institutes and cafes were refreshing.food is very good flaour and taste wise is very good",
  "The only mini south India experience in the City. The restaurants offer best South Indian food here. I would recommend to Take a tour of HopOn India's Matunga & Dadar Parsi Colony Walk & explore more about the culture, food & stories here",
  "One destination for all fruits, vegetables and flowers at Matunga market. All items available fresh and comes daily from wholesale markets.Even eateries like potato and banana chips comes from Kerala and Chennai are available.",
];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: farmerui(),
  ));
}

class farmerui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text("kochi"),
                  Icon(Icons.keyboard_arrow_down_sharp)
                ],
              )
            ],
            title: Text("FARMER FRESH ZONE"),
            backgroundColor: Color.fromARGB(255, 14, 187, 19),
            bottom: AppBar(
              backgroundColor: const Color.fromARGB(255, 14, 187, 19),
              title: Padding(
                padding: const EdgeInsets.only(right: 3, left: 3),
                child: SizedBox(
                  child: Container(
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(),
                              borderRadius: BorderRadius.circular(7)),
                          hintText: " search for vegetables and fruits.....",
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      names.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(top: 4, left: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 214, 237, 214),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          onPressed: () {},
                          child: Text(
                            names[index],
                            style: TextStyle(
                                color: Color.fromARGB(255, 26, 159, 30)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: CarouselSlider.builder(
                        itemCount: picturess.length,
                        itemBuilder: (context, index, realindex) {
                          return Container(
                              height: 230,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(picturess[index]),
                                      fit: BoxFit.fill)));
                        },
                        options: CarouselOptions(
                            height: 240,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 1,
                            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 600),
                            viewportFraction: 1)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    color: Color.fromARGB(255, 238, 240, 247),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 40,
                                width: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/128/2474/2474121.png")),
                                )),
                            Text(
                              "30 MINS POLICY",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-icons-png.flaticon.com/128/924/924906.png"),
                              )),
                            ),
                            Text(
                              "TRACEABILITY",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/128/10534/10534163.png"))),
                            ),
                            Text(
                              "LOCAL SOURCING",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Shop By Category",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
                ),
                GridView.count(
                  padding: EdgeInsets.zero,
                  childAspectRatio: .9,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  children: List.generate(
                    9,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2.0,
                                spreadRadius: 2.0,
                                offset: Offset(5.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 243, 245, 243)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image(
                                image: NetworkImage(grid1[index]),
                                width: double.infinity,
                                height: 140,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                text1[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 13),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: .25,
                            spreadRadius: .5,
                          ),
                        ]),
                        height: 300,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Image.network(
                          "https://media.gettyimages.com/id/173923946/photo/roasted-salmon-salad.jpg?s=612x612&w=0&k=20&c=jQaKpZax3KCdq7ralPLJl9GDS4GTesHJdq1-bOHvpUM=",
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        width: 305,
                        height: 50,
                        child: Column(
                          children: [
                            Text(
                              "DELICIOUS",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "GOURMET SALADS",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "Best Selling Products",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
                ),
                GridView.count(
                  padding: EdgeInsets.zero,
                  childAspectRatio: .9,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: List.generate(
                      4,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0,
                                        spreadRadius: 2.0,
                                        offset: Offset(5.0, 2.0))
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 243, 245, 243)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5)),
                                    child: Image(
                                      image: NetworkImage(grid2[index]),
                                      width: 240,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      productitems[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54,
                                          fontSize: 20),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 15),
                                    child: Text(
                                      price[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(137, 9, 3, 3)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 7, right: 8),
                                        child: Text(
                                          kg[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                              fontSize: 13),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                        child: Row(
                                          children: List.generate(
                                            eleADD.length,
                                            (index) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 4, left: 120),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      primary: Color.fromARGB(
                                                          255, 46, 160, 11),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100))),
                                                  onPressed: () {},
                                                  child: Text(
                                                    eleADD[index],
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            244,
                                                            249,
                                                            249,
                                                            246)),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: 50,
                    child: Center(
                      child: Text(
                        "VIEW MORE",
                        textScaleFactor: 1,
                        style:
                            TextStyle(color: Color.fromARGB(255, 9, 148, 13)),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 7, 161, 12),
                              spreadRadius: 3)
                        ]),
                    height: 30,
                  ),
                ),
                Container(
                  height: 120,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 250,
                          child: Column(
                            children: [
                              Text(
                                "we are working toward safe food-which are Nutri locked and hygenic as well",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "READ MORE",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.green,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 120,
                          width: 200,
                          child: Image(
                            height: 50,
                            width: 150,
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/128/6703/6703900.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Our Blog Posts",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                              OBPpics.length,
                              (index) => Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Container(
                                      color: Color.fromARGB(255, 238, 249, 231),
                                      height: 180,
                                      width: 200,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              topRight: Radius.circular(15),
                                            ),
                                          ),
                                          Container(
                                            height: 135,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey,
                                                      blurRadius: 1.0,
                                                      spreadRadius: 1.0,
                                                      offset: Offset(5, 1))
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        OBPpics[index]),
                                                    fit: BoxFit.fill)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 4, bottom: 4),
                                            child: Text(
                                              OBPTEXT[index],
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 7, right: 7),
                                            child: Row(
                                              children: [
                                                Text(
                                                  OBPtimes[index],
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Icon(
                                                    Icons.arrow_forward_rounded,
                                                    size: 13,
                                                    color: Colors.green),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "What Our Customer Say ?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 254, 254, 254),
                            spreadRadius: 3)
                      ]),
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider.builder(
                      itemCount: custpic.length,
                      itemBuilder: (context, index, realindex) {
                        return Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage(custpic[index]),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    custname[index],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    custjob[index],
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Text(
                                  custreviews[index],
                                  style: TextStyle(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                          height: 240,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 1,
                          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 500),
                          viewportFraction: 1)),
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        "This kochi based farm to fork online",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "marketplace is connecting farmers directly",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "to customers",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                        left: 30,
                      ),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_DQigeBR0D_rIln8VoaOwg7A5L9EG0MCBLw&usqp=CAU",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 10),
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKTG2QRrRmrUz51dqNRm18cSk6AJpDxr-cYA&usqp=CAU"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 10),
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd3vBQIN4gSfojn4Ze6PWGzQ8JilfH63dT5w&usqp=CAU"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZIv8pu2gQmRhC4RrSD1Oe8xiYt5zdIBNVA&usqp=CAU"),
                                fit: BoxFit.fill)),
                      ),
                    )
                  ],
                ),
                Container(
                  color: const Color.fromARGB(255, 252, 247, 247),
                  height: 230,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "Get To Know Us",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 15),
                              child: Text(
                                "About Us |",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 15),
                              child: Text(
                                "Our Farmer |",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 15),
                              child: Text(
                                " Blog ",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 10, right: 20),
                              child: Text(
                                "Useful Links",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Text(
                                "Privacy Policy |",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Text(
                                "Return & Refund Policy |",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 10),
                              child: Text(
                                "Terms & Conditions",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, top: 20, right: 40),
                              child: Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn2.iconfinder.com/data/icons/social-media-applications/64/social_media_applications_6-twitter-128.png"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, right: 40, top: 20),
                              child: Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn2.iconfinder.com/data/icons/social-icons-33/128/Youtube-128.png"),
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, right: 40, top: 20),
                              child: Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Facebook_colored_svg_copy-128.png"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40, right: 40, top: 20),
                              child: Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/173_Instagram_logo_logos-128.png"),
                                        fit: BoxFit.fill)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 13, bottom: 5),
                        child: Text(
                          "Copy@2021 Farmers Fresh Zone,",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Text(
                          "All Right Reserved.V2.40.22",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff01b748),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.energy_savings_leaf,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_checkout_outlined,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),
    );
  }
}
