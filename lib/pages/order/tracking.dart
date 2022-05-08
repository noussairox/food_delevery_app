// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget getTimeLine() {
    double heightCon = 80;
    return Container(
      color: Colors.grey[50],
      margin: EdgeInsets.only(top: 10.0, bottom: 80.0),
      child: Column(
        children: [
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      "Validation de votre commande",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'MsMadi'),
                    ),
                    Expanded(child: Text("")),
                    Icon(
                      Icons.restaurant,
                      color: PrimaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      "Préparation de votre commande",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'MsMadi'),
                    ),
                    Expanded(child: Text("")),
                    Icon(
                      Icons.cookie,
                      color: PrimaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      "Commande Préparée",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'MsMadi'),
                    ),
                    Expanded(child: Text("")),
                    Icon(
                      Icons.verified,
                      color: PrimaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      "Livraison en cours",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'MsMadi'),
                    ),
                    Expanded(child: Text("")),
                    Icon(
                      Icons.motorcycle_rounded,
                      color: PrimaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightCon,
            child: TimelineTile(
              lineXY: 0.2,
              indicatorStyle: IndicatorStyle(height: 1.0),
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Text(
                      "Soyez prêts",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'MsMadi'),
                    ),
                    Expanded(child: Text("")),
                    Icon(
                      Icons.verified_user,
                      color: PrimaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getInfoDelivery() {
    return Container(
      child: ListTile(
        title: Text(
          "Livreur",
        ),
        subtitle: Text(
          "Hamza Idmoudi",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'RadioCanada',
              fontSize: 18.0,
              color: PrimaryColor),
        ),
        leading: Container(
          width: 75.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("images/achraf.png"))),
        ),
        trailing: Container(
          width: 60,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
                  Text(
                    "4.2",
                    style: TextStyle(color: PrimaryColor),
                  ),
                ],
              ),
              Text(
                "154",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Suivi du commande",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: PrimaryColor,
            )),
        actions: [
          InkWell(
            onTap: () {},
            child: Row(children: [
              Text(
                "Contact",
                style: TextStyle(
                    color: PrimaryColor,
                    fontSize: 16,
                    fontFamily: 'RadioCanada'),
              ),
              Icon(
                Icons.chat,
                color: PrimaryColor,
              )
            ]),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 30.0)),
          Text(
            "Temps éstimé",
            style: TextStyle(
                fontFamily: 'RadioCanada',
                fontSize: 27.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "10:41:00",
            style: TextStyle(
              fontFamily: 'RadioCanada',
              fontSize: 27.0,
              fontWeight: FontWeight.bold,
              color: PrimaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Divider(color: Colors.grey[200]),
          ),
          getInfoDelivery(),
          getTimeLine(),
        ],
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Annulez la commande",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    );
  }
}
