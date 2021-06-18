import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_verification/helper/palatte.dart';
import 'package:phone_verification/helper/text-input.dart';

import '../config/colors.dart';

class Add_Resources_Screen extends StatefulWidget {
  @override
  Add_Resources_ScreenState createState() => Add_Resources_ScreenState();
}

class Add_Resources_ScreenState extends State<Add_Resources_Screen> {
  final user = FirebaseAuth.instance.currentUser;
  final form1 = GlobalKey<FormState>();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController nameController = new TextEditingController();
  final TextEditingController serviceController = new TextEditingController();
  final TextEditingController organizationController =
      new TextEditingController();
  final TextEditingController descriptionController =
      new TextEditingController();
  final TextEditingController contactController = new TextEditingController();
  final TextEditingController locationController = new TextEditingController();
  final TextEditingController priceController = new TextEditingController();
  final TextEditingController dateController = new TextEditingController();
  final TextEditingController quantityController = new TextEditingController();

  final _controller = new TextEditingController();

  //Form controllers
  @override
  void initState() {
    super.initState();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  void _addResource(
      String title,
      String service,
      String description,
      String quantity,
      String contact,
      String location,
      String price,
      String provider) async {
    FocusScope.of(context).unfocus();
    // final user = FirebaseAuth.instance.currentUser;
    // final userData = await FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(user.uid)
    //     .get();
    // final user = FirebaseAuth.instance.currentUser;
    // final userData = await FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(user.uid)
    //     .get();
    FirebaseFirestore.instance.collection('rent').add({
      'createdAt': Timestamp.now(),
      // 'userId': user.uid,
      // 'username': userData.data()['name'],
      'name': title,
      'service': service,
      'description': description,
      'quantity': quantity,
      'price': price,
      'location': location,
      'provider': provider,
      'contact': contact,
      // 'userImage':  _image,
    });
    // _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return lendScreen();
  }

  Widget lendScreen() {
    final node = FocusScope.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backwardsCompatibility: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.white,
        bottomOpacity: 0.0,
        foregroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: new AssetImage("assets/images/mask.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    height: 70,
                    child: Center(
                      child: Text(
                        'Donate',
                        style: kHeading,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              controller: nameController,
                              icon: FontAwesomeIcons.user,
                              hint: 'Name',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: serviceController,
                              icon: FontAwesomeIcons.servicestack,
                              hint: 'Service Type',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: organizationController,
                              icon: FontAwesomeIcons.user,
                              hint: 'Organization',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: descriptionController,
                              icon: Icons.menu,
                              hint: 'Product/Service Description',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: quantityController,
                              icon: FontAwesomeIcons.star,
                              hint: 'Quantity',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: locationController,
                              icon: FontAwesomeIcons.searchLocation,
                              hint: 'Location',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: contactController,
                              icon: FontAwesomeIcons.phone,
                              hint: 'Contact',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            TextInput(
                              controller: priceController,
                              icon: FontAwesomeIcons.star,
                              hint: 'Price',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                MaterialButton(
                                  color: Colors.blue[200],
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    _addResource(
                                        nameController.text.trim(),
                                        serviceController.text.trim(),
                                        descriptionController.text.trim(),
                                        quantityController.text.trim(),
                                        contactController.text.trim(),
                                        locationController.text.trim(),
                                        priceController.text.trim(),
                                        organizationController.text.trim());
                                  },
                                ),
                                SizedBox(
                                  height: 80,
                                ),
                              ],
                            )
                          ],
                        ),
                      ]))
                ],
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
                      colors: [
                        Colors.blue[900],
                        Colors.blue[200],
                        Colors.white
                      ]),
                  boxShadow: [
                    BoxShadow(color: Colors.blue[900], blurRadius: 30)
                  ],
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
                          onPressed: () {
                            print("bdvhbskv");
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                        Text("Help",
                            style: GoogleFonts.barlow(
                                color: Colors.white, fontSize: 17))
                      ],
                    ),
                    Text(
                      "Add Resources",
                      style: GoogleFonts.barlow(
                          shadows: [
                            BoxShadow(color: Colors.blue[900], blurRadius: 20)
                          ],
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
