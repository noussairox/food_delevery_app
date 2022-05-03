// @dart=2.9
import 'package:flutter/material.dart';
import 'package:food_app/pages/account/login.dart';
import 'package:food_app/pages/config.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      "Crée un nouveau compte",
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
                      decoration: const InputDecoration(
                        hintText: "Nom Complet",
                        border: InputBorder.none,
                      ),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 1) {
                          return "Entrez un nom valid !!";
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
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(left: 20.0, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0)),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Password",
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
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: "Numéro de téléphone",
                        border: InputBorder.none,
                      ),
                      validator: (String value) {
                        if (value.isEmpty || value.length < 8) {
                          return "Entrez un numéro de téléphone valid !!";
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
                          "S'enregistrer",
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
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "En cliquant sur enregistrer vous acceptez nos régles d'utilisation",
                      style: TextStyle(
                          fontFamily: 'MsMadi',
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            )),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Vous avez déja un compte",
                      style: TextStyle(color: Colors.black, fontSize: 16.0)),
                  Padding(padding: EdgeInsets.all(10)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: PrimaryColor, fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
