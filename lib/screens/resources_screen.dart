import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../widgets/Available_resources.dart';

import 'package:google_fonts/google_fonts.dart';

class ResourcesScreen extends StatefulWidget {
  @override
  _ResourcesScreenState createState() => _ResourcesScreenState();
}

class _ResourcesScreenState extends State<ResourcesScreen> {
  String location = "";
  TextEditingController controller = new TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0,
      //   shadowColor: Colors.white,
      //   bottomOpacity: 0.0,
      //   foregroundColor: Colors.transparent,
      //   backgroundColor: Colors.transparent,
      // ),
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
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
        // Positioned(
        //   top: 0,
        //   left: 0,
        //   right: 0,
        //   child: Container(
        //     alignment: Alignment.topCenter,
        //     height: 170,
        //     width: double.infinity,
        //     decoration: BoxDecoration(
        //         // border: Border.all(color: Colors.purple),
        //         gradient: LinearGradient(
        //             begin: Alignment.topCenter,
        //             end: Alignment.bottomCenter,
        //             colors: [Colors.blue[900], Colors.blue[200], Colors.white]),
        //         boxShadow: [BoxShadow(color: Colors.blue[900], blurRadius: 30)],
        //         color: Colors.blue[300],
        //         borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(50),
        //             bottomRight: Radius.circular(50))),
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 30),
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           SizedBox(
        //             height: 50,
        //           ),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: <Widget>[
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: Icon(
        //                   Icons.menu,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //               IconButton(
        //                 onPressed: () {},
        //                 icon: Icon(
        //                   Icons.filter_list,
        //                   color: Colors.white,
        //                 ),
        //               ),
        //             ],
        //           ),
        //           Text(
        //             "Resources",
        //             style: GoogleFonts.adventPro(
        //                 shadows: [
        //                   BoxShadow(color: Colors.blue[900], blurRadius: 20)
        //                 ],
        //                 color: Colors.white,
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height / 5,
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        padding: EdgeInsets.only(left: 20),
                        // onPressed: () {
                        //   return Drawer(child: MainDrawer());
                        // },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                          child: Container(
                              child: Text("Location",
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.barlow(
                                      color: Colors.white, fontSize: 17))),
                          onTap: () {
                            return _displayTextInputDialog(context);
                          })
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
                      fontWeight: FontWeight.w400,
                    ),
                  )
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
        barrierColor: Colors.blue[50],
        context: context,
        builder: (context) {
          return AlertDialog(
            titleTextStyle: GoogleFonts.lato(color: Colors.black),
            elevation: 20,
            backgroundColor: Colors.blue[50],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Text(
              'Enter Location',
              style: GoogleFonts.lato(color: Colors.black, fontSize: 20),
            ),
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
                color: Colors.blue[50],
                textColor: Colors.black,
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
