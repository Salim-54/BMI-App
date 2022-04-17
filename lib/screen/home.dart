// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:this_is_app/constants/constants.dart';
// import 'package:this_is_app/widget/left_bar.dart';
// import 'package:this_is_app/widget/right_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: unused_field,
  TextEditingController _heightController = TextEditingController();
  // ignore: unused_field
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My_FIRST',
          style: TextStyle(
              color: accentHexColor, fontWeight: FontWeight.w900, fontSize: 32),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ignore: sized_box_for_whitespace
              Container(
                width: 130,
                child: TextField(
                  controller: _heightController,
                  // ignore: prefer_const_constructors
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: accentHexColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Height',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 42,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 130,
                child: TextField(
                  controller: _weightController,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w300,
                    color: accentHexColor,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Weight',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      fontSize: 42,
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          // ignore: avoid_unnecessary_containers
          GestureDetector(
            onTap: () {
              double _h = double.parse(_heightController.text);
              double _w = double.parse(_weightController.text);
              setState(() {
                _bmiResult = _w / (_h * _h);
                if (_bmiResult > 25) {
                  _textResult = "Ooh you're over weight 🎅";
                } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                  _textResult = 'Looks like You\'re Normal👏';
                } else {
                  _textResult = 'Looks like You need more food🍔🍕';
                }
              });
            },
            child: Container(
              child: Text(
                "Calculator",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(
              _bmiResult.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 90,
                fontWeight: FontWeight.bold,
                color: accentHexColor,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Visibility(
            visible: _textResult.isNotEmpty,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Text(
                _textResult,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: accentHexColor,
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 25,
                width: 40,
                decoration: BoxDecoration(
                    color: accentHexColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 25,
                width: 90,
                decoration: BoxDecoration(
                    color: accentHexColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                    color: accentHexColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 30,
                decoration: BoxDecoration(
                    color: accentHexColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 25,
                width: 90,
                decoration: BoxDecoration(
                    color: accentHexColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
