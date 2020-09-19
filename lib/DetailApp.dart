import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailApp extends StatefulWidget {
  @override
  _DetailAppState createState() => _DetailAppState();
}

class _DetailAppState extends State<DetailApp> {
  String food = 'images/food1.png';
  Color btnColorOne = Colors.lightBlue;
  Color btnColorTwo = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.grey,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Image(
                image: AssetImage('images/b1.jpg'),
              ),
              Positioned(
                top: 175,
                left: 75,
                child: Image(
                  width: 280,
                  image: AssetImage(food),
                ),
              ),
              Positioned(
                top: 90,
                left: 8,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      CupertinoButton(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: btnColorOne,
                        child: Text('Food 1'),
                        onPressed: () {
                          setState(() {
                            food = 'images/food1.png';
                            btnColorOne = Colors.lightBlue;
                            btnColorTwo = Colors.grey;
                          });
                        },
                      ),
                      SizedBox(width: 30),
                      CupertinoButton(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: btnColorTwo,
                        child: Text('Food 2'),
                        onPressed: () {
                          setState(() {
                            food = 'images/food2.png';
                            btnColorOne = Colors.grey;
                            btnColorTwo = Colors.lightBlue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 500,
                left: 120,
                child: Row(
                  children: <Widget>[
                    CupertinoButton(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.redAccent,
                      child: Text('Clear'),
                      onPressed: () {
                        setState(() {
                          food = '';
                          btnColorOne = Colors.grey;
                          btnColorTwo = Colors.grey;
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
