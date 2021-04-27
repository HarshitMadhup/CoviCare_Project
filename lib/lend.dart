import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phone_verification/palatte.dart';
import 'package:phone_verification/widgets/background-image.dart';
import 'package:phone_verification/widgets/password-input.dart';
import 'package:phone_verification/widgets/rounded-button.dart';
import 'package:phone_verification/widgets/text-input.dart';

class LendScreen extends StatefulWidget {
  @override
  _LendScreenState createState() => _LendScreenState();
}

class _LendScreenState extends State<LendScreen> {
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

  void _sendMessage(
      String title,
      String service,
      String description,
      String quantity,
      String contact,
      String location,
      String price,
      String provider) async {
    FocusScope.of(context).unfocus();
    final user = FirebaseAuth.instance.currentUser;
    final userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();
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
      // 'userImage':  _image,
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return lendScreen();
  }

  Widget lendScreen() {
    final node = FocusScope.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
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
                            Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                ElevatedButton(
                                  child: Text(
                                    "Submit",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    _sendMessage(
                                        nameController.text.trim(),
                                        serviceController.text.trim(),
                                        descriptionController.text.trim(),
                                        quantityController.text.trim(),
                                        contactController.text.trim(),
                                        locationController.text.trim(),
                                        quantityController.text.trim(),
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
        ],
      ),
    );
  }
}
