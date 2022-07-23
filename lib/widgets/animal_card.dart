import 'package:flutter/material.dart';
import 'package:municipality_app/widgets/elevated_button_design.dart';

class CatCard extends StatefulWidget {
  const CatCard({
    Key? key,
  }) : super(key: key);

  @override
  State<CatCard> createState() => _CatCardState();
}

class _CatCardState extends State<CatCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Container(
        width: 290,
        height: 200,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 159, 209, 249), borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 134,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 0, bottom: 57, top: 8),
                    child: Container(
                      height: 90,
                      width: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              "Adı: Pamuk",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              "Cinsi:Bilinmiyor",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              "Yaşı:2",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 52, right: 5, top: 5),
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage("assets/icons/cat.jpg"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButtonDesignx(
                color: Colors.black,
                title: "SAHİPLENMEK İSTİYORUM",
                onpress: () {},
                height: 25,
                width: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}


