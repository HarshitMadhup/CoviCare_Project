import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:phone_verification/Available_resources.dart';
import 'package:phone_verification/config.dart/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_verification/tabView.dart';

import 'loginScreen.dart';

class RentScreen extends StatefulWidget {
  @override
  _RentScreenState createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  String location = "";
  TextEditingController controller = new TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.white,
        bottomOpacity: 0.0,
        foregroundColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            child: Text("Logout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            onPressed: () {
              //redirect
              // _auth.signOut().then((value) => Navigator.pushAndRemoveUntil(
              //       context,
              //       MaterialPageRoute(
              //         builder: (BuildContext context) => LoginScreen(),
              //       ),
              //       (route) => false,
              //     ));
              return _displayTextInputDialog(context);
            },
          ),
        ],
      ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white,
                            Colors.blue[100]
                          ]),
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Available(location)),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.topCenter,
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.purple),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[900], Colors.blue[200], Colors.white]),
                boxShadow: [BoxShadow(color: Colors.blue[900], blurRadius: 30)],
                color: Colors.blue[300],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Resources",
                    style: GoogleFonts.adventPro(
                        shadows: [
                          BoxShadow(color: Colors.blue[900], blurRadius: 20)
                        ],
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.topCenter,
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.purple),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[900], Colors.blue[200], Colors.white]),
                // boxShadow: [BoxShadow(color: Colors.blue[900], blurRadius: 30)],
                color: Colors.blue[300],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     Icons.filter_list,
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                  Text(
                    "Resources",
                    style: GoogleFonts.barlow(
                        shadows: [
                          BoxShadow(color: Colors.blue[900], blurRadius: 20)
                        ],
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        barrierColor: Colors.black,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Enter Date'),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  //  valueText = value;
                });
              },
              controller: controller,
              decoration: InputDecoration(hintText: "State"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.black,
                textColor: Colors.green,
                child: Text('OK'),
                onPressed: () {
                  setState(() {
                    location = controller.text.toString();

                    Navigator.pop(context);
                  });
                },
              ),
            ],
          );
        });
  }
}
