import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid_nepal/utils/appConstants.dart';

class CardContent extends StatelessWidget {
  CardContent(
      {@required this.faIcon,
      @required this.cardText,
      @required this.cardCount,
      @required this.cardColor});
  final IconData faIcon;
  final String cardText;
  final String cardCount;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          faIcon,
          color: cardColor,
          size: size.height * 0.035,
        ),
        SizedBox(
          height: size.height * 0.015,
        ),
        Text(
          cardText,
          style: TextStyle(
            fontSize: size.height * 0.015,
            color: Color(0xFF303030),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          cardCount,
          style: TextStyle(
            fontSize: size.height * 0.03,
            fontWeight: FontWeight.bold,
            color: cardColor,
          ),
        ),
      ],
    );
  }
}