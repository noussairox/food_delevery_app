// @dart=2.9

import 'package:flutter/material.dart';
import 'package:food_app/pages/account/changepassword.dart';
import 'package:food_app/pages/account/myprofile.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/favorite/favorite.dart';
import 'package:food_app/pages/order/tracking.dart';
import 'package:food_app/pages/product/category.dart';
import 'package:food_app/pages/shopping/shopping.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Container(
      child: Drawer(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text(
                  "Noussair Abellouch",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'RadioCanada'),
                ),
                accountEmail: const Text(
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Category()));
                },
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Menu",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.restaurant_menu,
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
              Theme(
                data: theme,
                child: ExpansionTile(
                  title: const Text(
                    "Mon Compte",
                    style: TextStyle(fontFamily: 'RadioCanada', fontSize: 18.0),
                  ),
                  leading: Icon(
                    Icons.account_box,
                    color: PrimaryColor,
                  ),
                  children: [
                    //-------------------------Child Account
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()));
                      },
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            title: Text(
                              "Changez les informations personnelles",
                              style: TextStyle(
                                  fontFamily: 'RadioCanada', fontSize: 16.0),
                            ),
                            leading: Icon(
                              Icons.manage_accounts_outlined,
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePassword()));
                      },
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            title: Text(
                              "Changez le mot de passe",
                              style: TextStyle(
                                  fontFamily: 'RadioCanada', fontSize: 16.0),
                            ),
                            leading: Icon(
                              Icons.settings,
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
                    //-------------------------End child account
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Favorite()));
                },
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Shopping()));
                },
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Mes Commandes",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.history,
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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tracking()));
                },
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        "Suivi du commande",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.history_toggle_off_rounded,
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
                        "A propos de nous",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.message,
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
                        "Contactez-nous",
                        style: TextStyle(
                            fontFamily: 'RadioCanada', fontSize: 18.0),
                      ),
                      leading: Icon(
                        Icons.phone,
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
