import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ElevatedButtonDesign extends StatefulWidget {
  String title;
  Color color;
  dynamic screen;

  ElevatedButtonDesign(
      {Key? key, required this.color, required this.title, this.screen})
      : super(key: key);

  @override
  State<ElevatedButtonDesign> createState() => _ElevatedButtonDesignState();
}

class _ElevatedButtonDesignState extends State<ElevatedButtonDesign> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 290.0,
        height: 35,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            Get.to(widget.screen);
          },
        ),
      ),
    );
  }
}

class ElevatedButtonDesignx extends StatefulWidget {
  String title;
  Color color;
  Function() onpress;
  double width;
  double height;

  ElevatedButtonDesignx(
      {Key? key,
      required this.color,
      required this.title,
      required this.onpress,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  State<ElevatedButtonDesignx> createState() => _ElevatedButtonDesignxState();
}

class _ElevatedButtonDesignxState extends State<ElevatedButtonDesignx> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(widget.color),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          onPressed: widget.onpress,
        ),
      ),
    );
  }
}
