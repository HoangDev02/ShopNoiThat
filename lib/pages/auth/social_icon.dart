import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocalIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){press();},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.fromLTRB(25,10,25,10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black12,
          ),

        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}