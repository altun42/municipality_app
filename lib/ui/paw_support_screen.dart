// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:municipality_app/ui/ad_creation_screen.dart';
import 'package:municipality_app/widgets/end_drawer_menu.dart';
import 'package:municipality_app/widgets/top_bar.dart';

import '../widgets/elevated_button_design.dart';

class PawSupportScreen extends StatefulWidget {
  const PawSupportScreen({Key? key}) : super(key: key);

  @override
  State<PawSupportScreen> createState() => _PawSupportScreenState();
}

class _PawSupportScreenState extends State<PawSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopBar(backgroundColor: Colors.blue, title: "PATİ DESTEK"),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image(
              image: AssetImage("assets/icons/paw.jpg"),
              width: 130,
              height: 130,
            ),
          ),
          Container(
            width: 200,
            height: 150,
            child: Text(
              "PATİ DESTEK ile sokak hayvanlarına yardım talep edebilir, kaybolan evcil hayvanlarınız için ilan açabilir,bulduğunuz sokak hayvanlarını ilan ederek sahiplerine ulaştırabilirsiniz",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            child: Column(
              children: [
                ElevatedButtonDesign(
                  title: "İLAN OLUŞTUR",
                  color: Colors.blue,
                  screen: AdCreationScreen(),
                ),

                ElevatedButtonDesign(
                  title: "PATİ İLANLARI",
                  color: Color.fromARGB(255, 4, 152, 9),
                ),
              ],
            ),
          ),
        ],
      ),
      endDrawer:EndDrawerMenu() ,
    );
  }
}

