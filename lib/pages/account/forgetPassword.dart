// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/account/register.dart';
import 'package:food_app/pages/config.dart';

class forgetPassword extends StatefulWidget {
  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
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
                      "Mot de passe oublié",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: PrimaryColor,
                        fontFamily: 'RadioCanada',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: const Text(
                      "Donnez votre adresse d'émail afin de rénisialisé votre compte",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
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
                      decoration: const InputDecoration(
                        hintText: "Email",
                        border: InputBorder.none,
                      ),
                      validator: (String value) {
                        if (value.isEmpty ||
                            value.indexOf(".") == -1 ||
                            value.indexOf("@") == -1) {
                          return "Entrez un email valid !!";
                        }
                      },
                    ),
                  ),
                  MaterialButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width - 150,
                        child: Text(
                          "Envoyez!",
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
