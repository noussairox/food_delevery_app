//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/tips/tips.dart';

class GetStart extends StatefulWidget {
  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            height: myheight * 2,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("images/tip0.png"), fit: BoxFit.contain)),
          ),
          Container(
            height: myheight - 20,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: PrimaryColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.elliptical(50, 68))),
            child: ListView(
              children: <Widget>[
                Column(
                  // textDirection: TextDirection.ltr,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Vous avez faim !",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MsMadi'),
                    ),
                    const Padding(padding: EdgeInsets.all(8)),
                    const Text(
                      "Vous trouvez des délicieux plats chez nos restaurants",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                        fontFamily: 'RadioCanada',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Tips();
                        }));
                      },
                      child: Container(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 11.0, bottom: 15.0),
                          margin: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const Text(
                            "Découvrir plus",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'RadioCanada',
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
