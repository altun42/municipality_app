import 'package:flutter/material.dart';
import 'package:municipality_app/widgets/background_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:municipality_app/widgets/drop_down_button.dart';
import 'package:municipality_app/widgets/icons.dart';
import 'package:municipality_app/widgets/text.dart';

class TopBar extends StatefulWidget {
  Color? backgroundColor;
  String title;

  TopBar({Key? key, required this.backgroundColor,required this.title}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  String dropdownvalue = 'Item 1'; 
  var items = [   
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ]; 


  TopBarBackgroundColor _backgroundColor = TopBarBackgroundColor();
  IconView iconView = IconView();
  Texts text = Texts();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: widget.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            iconView.arroIconButton(),
            
            Padding(
              padding: const EdgeInsets.only(left: 51.0),
              child: text.topText(widget.title),
              
            ),
            
            iconView.menuIconButton(context),
            
          ],
        ),
      ),
    );
  }
}
