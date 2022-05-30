import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/const_class.dart';
import 'package:food_app/main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left_sharp,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
        backgroundColor: const Color.fromARGB(255, 248, 233, 209),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 248, 233, 209),
            ),
            width: 500,
            height: 270,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(MainFood().whooperPath)),
              ],
            ),
          ),
          Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text("Whooper Burger", style: TextStyle(fontSize: 24)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Text(
                    "Whopper eti, büyük boy susamlı sandviç ekmeği, mayonez, doğranmış marul, soğan halkaları, nefis barbekü sosu ve 2 adet cheddar peynirinden oluşmaktadır."),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Text(
                      "Beslenme Miktari",
                      style: TextStyle(fontSize: 17),
                    ),
                  )),
            ],
          ),
          Expanded(
            child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                childAspectRatio: 0.5,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Colors.orange.shade800,
                        size: 50.0,
                      ),
                      const Positioned(
                        top: 15,
                        child: Text(
                          "266",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Kalori",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Colors.orange.shade800,
                        size: 50.0,
                      ),
                      const Positioned(
                        top: 15,
                        child: Text(
                          "11",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Protein",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Colors.orange.shade800,
                        size: 50.0,
                      ),
                      const Positioned(
                        top: 15,
                        child: Text(
                          "598",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Sodyum",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Colors.orange.shade800,
                        size: 50.0,
                      ),
                      const Positioned(
                        top: 15,
                        child: Text(
                          "53",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Yağ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        color: Colors.orange.shade800,
                        size: 50.0,
                      ),
                      const Positioned(
                        top: 15,
                        child: Text(
                          "68",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "K.Hidrat",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
          const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                child: Text(
                  "Ana Maddeler",
                  style: TextStyle(fontSize: 17),
                ),
              )),
          Expanded(
            child: ListView(children: [
              Column(children: const [
                ListTile(
                    title: Text(
                      "Hamur",
                      textScaleFactor: 1.4,
                    ),
                    trailing: Text("2 Fincan")),
                ListTile(
                    title: Text(
                      "Sos",
                      textScaleFactor: 1.4,
                    ),
                    trailing: Text("1 Fincan")),
                ListTile(
                    title: Text(
                      "Peynir",
                      textScaleFactor: 1.4,
                    ),
                    trailing: Text("1 Parça")),
                ListTile(
                    title: Text(
                      "Soğan Halkası",
                      textScaleFactor: 1.4,
                    ),
                    trailing: Text("2 Parça")),
              ])
            ]),
          )
        ],
      ),
    );
  }
}

