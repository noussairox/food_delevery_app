// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/account/forgetPassword.dart';
import 'package:food_app/pages/account/register.dart';
import 'package:food_app/pages/config.dart';
import 'package:food_app/pages/home/home.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_sharp,
              color: PrimaryColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(5),
          child: Column(children: <Widget>[
            Expanded(
                child: Form(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: const Text(
                      "Changer le mot de passe",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: PrimaryColor,
                        fontFamily: 'RadioCanada',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20.0, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password Actuel",
                        border: InputBorder.none,
                      ),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 6) {
                          return "Entrez un password valid !!";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20.0, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Nouveau Password",
                        border: InputBorder.none,
                      ),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 6) {
                          return "Entrez un password valid !!";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20.0, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Verification Du Nouveau Password",
                        border: InputBorder.none,
                      ),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 6) {
                          return "Entrez un password valid !!";
                        }
                      },
                    ),
                  ),
                  MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Home()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width - 150,
                        child: const Text(
                          "Sauvegarder",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontFamily: 'RadioCanada'),
                        ),
                        margin: EdgeInsets.only(bottom: 10, top: 10.0),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: PrimaryColor,
                            borderRadius: BorderRadius.circular(20.0)),
                      )),
                ],
              ),
            )),
          ]),
        ));
  }
}
