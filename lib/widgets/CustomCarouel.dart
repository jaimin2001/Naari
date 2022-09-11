import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:naari/utils/quotes.dart';

class CustomCarouel extends StatelessWidget {
  const CustomCarouel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: List.generate(
            imageSliders.length,
            (index) => Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageSliders[index]))),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(colors: [
                          Colors.black.withOpacity(0.5),
                          Colors.transparent
                        ]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8, left: 8),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            articleTitle[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 85, 209, 124),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
