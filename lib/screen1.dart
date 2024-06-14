// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

import 'BMIResultScreen.dart';

class screen1 extends StatefulWidget {
  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  bool isMale = true;
  double height = 160;
  int age = 19;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.redAccent : Colors.grey[800],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text('MALE',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  isMale ? Colors.grey[800] : Colors.redAccent),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text('FEMALE',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text('${height.round()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                )),
                            Text(
                              'cm',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 100,
                          max: 220,
                          activeColor: Colors.redAccent,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Weight',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child:
                                  Icon(Icons.remove, color: Colors.white),
                                  backgroundColor:Colors.redAccent,
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 1) weight--;
                                    });
                                  },
                                ),
                                Text('${weight}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30)),
                                FloatingActionButton(
                                  child: Icon(Icons.add, color: Colors.white),
                                  backgroundColor: Colors.redAccent,
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  child:
                                      Icon(Icons.remove, color: Colors.white),
                                  backgroundColor: Colors.redAccent,
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    setState(() {
                                      if (age > 1) age--;
                                    });
                                  },
                                ),
                                Text('${age}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30)),
                                FloatingActionButton(
                                  child: Icon(Icons.add, color: Colors.white),
                                  backgroundColor: Colors.redAccent,
                                  mini: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.redAccent,
              child: MaterialButton(
                  child: Text(
                    'calculate',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    double result = weight / pow(height / 100, 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                          age: age,
                          result: result.round(),
                          isMale: isMale,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
