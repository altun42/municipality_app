import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  String path;
  String text;
  // dynamic screen;
  Categories({
    Key? key,
    required this.path,required this.text
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {print("object");},
      child: Container(
        
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              
                child: ImageIcon(AssetImage(widget.path),
                size: 75,
                )
                ),
                SizedBox(height: 8,),
                Text(widget.text,
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white),
        
      ),
    );
  }
}
