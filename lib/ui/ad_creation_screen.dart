import 'package:flutter/material.dart';

import 'package:municipality_app/widgets/animal_card.dart';
import 'package:municipality_app/widgets/elevated_button_design.dart';
import 'package:municipality_app/widgets/end_drawer_menu.dart';
import 'package:municipality_app/widgets/top_bar.dart';

class AdCreationScreen extends StatefulWidget {
  const AdCreationScreen({Key? key}) : super(key: key);

  @override
  State<AdCreationScreen> createState() => _AdCreationScreenState();
}

class _AdCreationScreenState extends State<AdCreationScreen> {
  bool isClickButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          children: [
            TopBar(backgroundColor: Colors.blue, title: "PATİ DESTEK"),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 75, left: 75),
              child: Text(
                "Lütfen Oluşturmak İstediğiniz İlan Konusunu Seçiniz",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  ElevatedButtonDesign(
                      color: Colors.blue,
                      title: "SOKAK HAYVANLARI İÇİN YARDIM TALEP ET"),
                  ElevatedButtonDesign(
                      color: Color.fromARGB(255, 4, 152, 9),
                      title: "EVCİL HAYVANIM KAYBOLDU"),
                  ElevatedButtonDesign(
                      color: Color.fromARGB(255, 4, 152, 9),
                      title: "EVCİL HAYVANIMI BULDUM"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                
                
                child: Column(
                  children: [
                    ElevatedButtonDesignx(
                      width: 290,
                      height: 35,
                      color: Colors.blue,
                      title: "SAHİPLENMEK İSTİYORUM",
                      onpress: () async{
                        setState(() {
                          isClickButton =true;
                        });
                        
                        
                      },
                      
                    ),
                   Visibility(
                    child: CatCard(),
                    visible: isClickButton,
                   ),
                  ],
                ),
              ),
            ),
          ],
        ),]
      ),
      endDrawer: EndDrawerMenu(),
    );
  }
}
