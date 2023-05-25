import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: imageslide(),
  ));
}

class imageslide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C silder"),
      ),
      body: CarouselSlider(
          items: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1549740425-5e9ed4d8cd34?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwzOTU0NTB8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                      fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1429041966141-44d228a42775?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTJ8Mzk1NDUwfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=600&q=60"),
                      fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1420582282039-a6d11404cb66?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8b3V0ZG9vcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"),
                      fit: BoxFit.cover)),
            ),
          ],
          options: CarouselOptions(
              autoPlay: true,
              viewportFraction: .7,
              height: 500,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
              autoPlayAnimationDuration: Duration(seconds: 1))),
    );
  }
}
