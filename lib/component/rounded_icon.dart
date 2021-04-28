import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class RoundedButton extends StatelessWidget {
  final Color color;
  final String image;
  final Function onpress;

  const RoundedButton({
    Key key, this.color, this.image, this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(image),
        ),
      ),
    );
  }
}