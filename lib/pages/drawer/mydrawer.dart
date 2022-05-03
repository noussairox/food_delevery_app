// @dart=2.9

import 'package:flutter/material.dart';
import 'package:food_app/pages/config.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Noussair Abellouch",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'RadioCanada'),
                ),
                accountEmail: Text(
                  "abellouch34@gmail.com",
                  style: TextStyle(color: Colors.grey),
                ),
                currentAccountPicture: GestureDetector(
                  child: const CircleAvatar(
                    backgroundColor: PrimaryColor,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.grey[100]),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Accueil",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.home,
                        color: PrimaryColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18.5,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Mon compte",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.account_box,
                        color: PrimaryColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18.5,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Mes Favoris",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.favorite,
                        color: PrimaryColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18.5,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Deconnection",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.reset_tv,
                        color: PrimaryColor,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey,
                        size: 18.5,
                      ),
                    ),
                    Divider(
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
