import 'package:flutter/material.dart';

class Category {
  const Category({required this.title, required this.icon});

  final String title;
  final AssetImage icon;
}

const List categories = const [
  const Category(
      title: 'KÜLTÜR SANAT', icon: AssetImage("assets/icons/brush.png")),
  const Category(title: 'TİYATRO', icon: AssetImage("assets/icons/brush.png")),
  const Category(
      title: 'ÇOCUK TİYATRO', icon: AssetImage("assets/icons/brush.png")),
  const Category(title: 'SİNEMA', icon: AssetImage("assets/icons/brush.png")),
  const Category(
      title: 'KONSERLER', icon: AssetImage("assets/icons/brush.png")),
  const Category(
      title: 'FESTİVAL & ETKİNLİKLER',
      icon: AssetImage("assets/icons/brush.png")),
  const Category(
      title: 'SEMİNER KÖŞESİ', icon: AssetImage("assets/icons/brush.png")),
  const Category(title: 'SPOR', icon: AssetImage("assets/icons/brush.png")),
  const Category(title: 'SERGİLER', icon: AssetImage("assets/icons/brush.png")),
  const Category(title: 'TURİZM', icon: AssetImage("assets/icons/brush.png")),
];

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 150,
      child: Card(
        
          color: Colors.grey,
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ImageIcon(
                    widget.category.icon,
                    size: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      widget.category.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 87, 175, 247)
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}
