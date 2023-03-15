import 'package:flutter/material.dart';

class Stack_Colors extends StatefulWidget {
  const Stack_Colors({Key? key}) : super(key: key);

  @override
  State<Stack_Colors> createState() => _Stack_ColorsState();
}

class _Stack_ColorsState extends State<Stack_Colors> {
  List<Color> color = [
    Colors.redAccent,
    Colors.blue,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.blueGrey,
    Colors.yellow,
    Colors.orange,
    Colors.black,
    Colors.cyanAccent
  ];
  List colorname = [
    "RedAccent",
    "Blue",
    "GreenAccent",
    "PinkAccent",
    "BlueGrey",
    "Yellow",
    "Orange",
    "Black",
    "CyanAccent",
  ];
  List distance = [20, 35, 50, 65, 80, 95, 110, 125, 140];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Stack App",
              style: TextStyle(fontSize: 25, color: Colors.teal),
            ),
            Stack(
              children:
                distance.asMap().entries.map((e) => Box(dis: distance[e.key],c1: color[e.key],colname: colorname[e.key])).toList(),
                // Box(110, Colors.red, "Red"),
                // Box(130, Colors.yellow, "Yellow"),
            )
          ],
        ),
      ),
    );
  }

  Widget Box({double dis = 0, Color? c1, String? colname}) {
    return Padding(
      padding: EdgeInsets.only(left: dis, top: dis),
      child: Container(
          height: 75,
          width: 75,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),color: c1,
            boxShadow: [
              BoxShadow(blurRadius: 5, color: Colors.black26, spreadRadius: 2),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 3.0,left: 5.0),
            child: Text(
              "$colname",
              style: TextStyle(fontSize: 10,color: Colors.white),
            ),
          )),
    );
  }
}
