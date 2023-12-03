import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:read_json_carousel/models/advertisement_model.dart';

class AdsCarousel extends StatelessWidget {
  const AdsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Advertisements>>(
        future: loadData(),
        builder: (context, index) {
          if (index.hasData) {
            final dt = index.data!;
            return CarouselSlider(
                items: dt.map((e) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    width: 350,
                    height: 184,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(e.imageURL), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(25, 114, 124, 142),
                        ),
                      ],
                    ),
                    alignment: Alignment.bottomCenter,
                    // padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      e.title,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                ));
          } else {
            return Container();
          }
        });
  }
}
