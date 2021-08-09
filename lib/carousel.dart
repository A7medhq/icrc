import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Caru extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0,
      autoPlay: true,
        enableInfiniteScroll: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,

      ),
      items: ['assets/images/1.jpg','assets/images/2.jpg','assets/images/3.jpg','assets/images/4.jpg'].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              
                width: MediaQuery.of(context).size.width,

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),

                  child: Image(image: AssetImage('$i'),
                  fit:  BoxFit.fill,
                  ),
                ),
            );
          },
        );
      }).toList(),
    );
  }
}
