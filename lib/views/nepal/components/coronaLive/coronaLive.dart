import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';

class CoronaLive extends StatelessWidget {
  CoronaLive({
    @required this.trailingIconColor,
    @required this.leadingIcon,
    @required this.leadingIconColor,
    @required this.titleText,
    @required this.titleColor,
    @required this.subtitleText,
    @required this.webview,
  });

  final Color trailingIconColor;
  final IconData leadingIcon;
  final Color leadingIconColor;
  final String titleText;
  final Color titleColor;
  final String subtitleText;
  final Widget webview;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: GroovinExpansionTile(
          defaultTrailingIconColor: trailingIconColor,
          leading: FaIcon(
            leadingIcon,
            size: 30,
            color: leadingIconColor,
          ),
          title: Text(
            titleText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: titleColor,
              fontSize: size.longestSide * 0.021,
            ),
          ),
          subtitle: Text(
            subtitleText,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
              fontSize: size.longestSide * 0.015,
            ),
          ),
          children: <Widget>[
            webview,
          ],
        ),
      ),
    );
  }
}
