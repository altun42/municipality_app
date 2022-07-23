import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileEndBar extends StatefulWidget {
  String path;
  String text;
  dynamic screen;
  


   ListTileEndBar({
    required this.path,required this.text, this.screen,
    Key? key,
  }) : super(key: key);

  @override
  State<ListTileEndBar> createState() => _ListTileEndBarState();
}

class _ListTileEndBarState extends State<ListTileEndBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: ListTile(
      
      leading: ImageIcon(AssetImage(widget.path),color: Colors.black,),
      title: Padding(
        padding: const EdgeInsets.only(),
        child: Text(widget.text,style: TextStyle(fontSize: 17,color: Colors.black),),
      ),
      onTap: (){
        Get.to(widget.screen);
        
      },
          ),
    );
  }
}