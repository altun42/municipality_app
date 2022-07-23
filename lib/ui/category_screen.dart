import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:municipality_app/widgets/background_color.dart';
import 'package:municipality_app/widgets/category_gridview.dart';
import 'package:municipality_app/widgets/end_drawer_menu.dart';
import 'package:municipality_app/widgets/top_bar.dart';

import '../component/categories.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TopBarBackgroundColor backgroundColor = TopBarBackgroundColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 217, 217),
      body: Column(
        children: [
          TopBar(
            title: "KATEGORİLER",
            backgroundColor: backgroundColor.categoryColor(),
          ),
          Expanded(
            
            child: GridView.count(
              padding: EdgeInsets.only(left: 35,right: 35,top: 40,bottom: 40),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: [
                Categories(path:"assets/icons/brush.png",text: "KÜLTÜR SANAT",),
                Categories(path: "assets/icons/theatre.png",text: "TİYATRO",),
                Categories(path: "assets/icons/childTheatre.png",text: "ÇOCUK TİYATRO",),
                Categories(path: "assets/icons/cinema.png",text: "SİNEMA",),
                Categories(path: "assets/icons/microphone.png",text: "KONSERLER",),
                Categories(path: "assets/icons/drum.png",text: "FESTİVAL & ETKİNLİKLER",),
                Categories(path: "assets/icons/dialog.png",text: "SEMİNER KÖŞESİ",),
                Categories(path: "assets/icons/cup.png",text: "SPOR",),
                Categories(path: "assets/icons/image.png",text: "SERGİLER",),
                Categories(path: "assets/icons/tourist.png",text: "TURİZM",),
              ],
            ),
          ),
        ],
      ),
      endDrawer: EndDrawerMenu(),
    );
  }
}

