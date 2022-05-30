import 'package:flutter/material.dart';
import 'package:food_app/const_class.dart';
import 'package:food_app/secondpage.dart';
import 'package:flutter/services.dart';
import 'package:food_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class FoodItem {
  final String iconImage;
  final String name;

  FoodItem({required this.iconImage, required this.name});
}

const String _title1 = "FIND YOUR";
const String _title2 = "Favorite Foods";
const String _textFormFieldHintText = "Search";

class _MyAppState extends State<MyApp> {

  void method() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void initState() {
    method();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}

class myScaffold extends StatelessWidget {
  const myScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.align_horizontal_left_outlined,
              )),
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Form(
            child: Column(children: [
          const Text(_title1),
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Text(
              _title2,
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.black12.withOpacity(0.1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon:
                        const Icon(Icons.search_rounded, color: Colors.grey),
                    suffixIcon: const Icon(
                      Icons.subject_outlined,
                      color: Colors.orange,
                    )),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: 40, child: Image.asset(Path().pizzaPath))),
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: 40, child: Image.asset(Path().burgerPath))),
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: 40, child: Image.asset(Path().rollsPath))),
                InkWell(
                    onTap: () {},
                    child: SizedBox(
                        width: 40, child: Image.asset(Path().soupPath))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 23, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Path().pizzaName),
                Text(Path().burgerName),
                Text(Path().rollsName),
                Text(Path().soupName),
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "Tüm Yemekler",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Icon(
                  Icons.chevron_right_sharp,
                ),
              ),
            ],
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: gridViewMenu(),
            ),
          ),
        ])));
  }
}

class gridViewMenu extends StatelessWidget {
  const gridViewMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      MainFood().whooperPath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(MainFood().whooperName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(MainFood().etliBarbekuPath),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(MainFood().etliBarbekuName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(MainFood().beanPath),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48),
                    child: Text(MainFood().beanBurgerName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      MainFood().steakPath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(MainFood().steakName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      MainFood().kingChickenPath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(MainFood().kingChickenName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      MainFood().kingBeefPath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(MainFood().kingBeefName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 248, 233, 209),
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      MainFood().doubleCheeseburgerPath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(MainFood().doubleCheeseBurgerName,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      )),
                ],
              ),
            ),
          ),
        ]);
  }
}
