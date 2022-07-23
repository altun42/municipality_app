import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconView {
  Widget arrowIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: FaIcon(
        FontAwesomeIcons.arrowLeftLong,
        size: 30,
        color: Colors.white,
      ),
    );
  }

  Widget arroIconButton() {
    return IconButton(
      onPressed: (){},
      icon: FaIcon(
        FontAwesomeIcons.arrowLeftLong,
        size: 30,
        color: Colors.white,
      ),
      padding:const EdgeInsets.only(left: 32) ,
    );
  }

  Widget menuIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 49.0),
      child: Icon(
        Icons.menu,
        size: 46,
        color: Colors.white,
      ),
    );
  }

  Widget menuIconButton(BuildContext context) {
    
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openEndDrawer();
      },
      icon: Icon(
        Icons.menu,
        size: 46,
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 49.0),
    );
  }
}
