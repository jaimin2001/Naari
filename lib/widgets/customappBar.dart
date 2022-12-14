import 'package:flutter/material.dart';
import 'package:naari/utils/quotes.dart';

class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({super.key});
  Function? onTap;
  int? quoteIndex;
  CustomAppBar({this.onTap, this.quoteIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        child: Text(
          sweetSayings[quoteIndex!],
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 88, 87, 83),
          ),
        ),
      ),
    );
  }
}
