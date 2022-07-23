import 'package:flutter/material.dart';
import 'package:municipality_app/ui/car_park_screen.dart';
import 'package:municipality_app/ui/category_screen.dart';
import 'package:municipality_app/ui/paw_support_screen.dart';

import 'list_tile_end_bar.dart';

class EndDrawerMenu extends StatefulWidget {
  const EndDrawerMenu({ Key? key }) : super(key: key);

  @override
  State<EndDrawerMenu> createState() => _EndDrawerMenuState();
}

class _EndDrawerMenuState extends State<EndDrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTileEndBar(path: "assets/icons/category.png",text: "KATEGORİLER",screen: CategoryScreen(),),
          ListTileEndBar(path: "assets/icons/paw.png",text: "PATİ DESTEK",screen: PawSupportScreen(),),
          ListTileEndBar(path: "assets/icons/carPark.png",text: "OTOPARKLAR",screen:CarParkScreen() ,),
          ListTileEndBar(path: "assets/icons/young.png",text: "KUŞADASI GENÇ"),
          ListTileEndBar(path: "assets/icons/kidlibrary.png",text: "DİJİTAL ÇOCUK KÜTÜPHANESİ"),
          ListTileEndBar(path: "assets/icons/pharmacy.png",text: "ECZANELER"),
          ListTileEndBar(path: "assets/icons/bus.png",text: "EGO"),
          ListTileEndBar(path: "assets/icons/complaint.png",text: "GÜVERCİN MASA"),
          ListTileEndBar(path: "assets/icons/tour.png",text: "GEZİ REHBERİ"),
        ],
          
      ),
      
    );
  }
}

