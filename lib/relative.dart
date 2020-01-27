import 'package:flutter/material.dart';

class Relative extends StatefulWidget {
  @override
  _RelativeState createState() => _RelativeState();
}

class _RelativeState extends State<Relative> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "亲戚称呼计算器",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 4,
          padding: EdgeInsets.all(5),
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          children: List.generate(12, (index) {
            return InkWell(
              child: Card(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "hello",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {},
            );
          }),
        ),
      ),
    );
  }
}
