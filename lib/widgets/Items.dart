import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_verification/config/colors.dart';
import 'package:phone_verification/screens/resources_details.dart';

class Item extends StatelessWidget {
  Item(

      // this.user,
      this.title,
      this.service,
      this.description,
      this.quantity,
      this.location,
      this.contact,
      this.price,
      this.provider,
      this.id);
  // final String user;
  final String title;
  final String service;
  // final String imageUrl;
  final String description;
  final String price;
  final String location;
  final String quantity;
  final String contact;
  final String provider;
  final String id;

  void select(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (BuildContext context) => ItemDetails(
    //             url, contact, price, title, location, availability)));
  }
  void initState() {}

  @override
  Widget build(BuildContext context) {
    String img;
    double top;
    double right;
    double width;
    {
      if (service.toLowerCase().contains("oxygen")) {
        img = "assets/images/tank.png";
        top = 20;
        right = -60;
        width = MediaQuery.of(context).size.width * 0.6;
      } else if (service.toLowerCase().contains("plasma") ||
          service.contains("blood")) {
        img =
            "assets/images/favpng_blood-donation-vector-graphics-health-care-heart.png";
        top = 47;
        right = 0;
        width = MediaQuery.of(context).size.width * 0.35;
      } else if (service.toLowerCase().contains("medicine") ||
          service.toLowerCase().contains("remdesivir")) {
        img = "assets/images/medical.png";
        top = MediaQuery.of(context).size.height / 20;
        right = 0;
        width = MediaQuery.of(context).size.width * 0.30;
      } else {
        img = "assets/images/medical.png";
        top = 35;
        right = 10;
        width = MediaQuery.of(context).size.width * 0.25;
      }
      return InkWell(
          onTap: () {
            // return ItemDetails(
            //     url, contact, price, title, location, availability);
          },
          child: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4 - 20,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       AppColors.primaryWhite,
              //       Colors.white,
              //     ]),
              borderRadius: BorderRadius.circular(20),
              color: AppColors.primaryWhite,
              boxShadow: AppColors.neumorpShadow,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: top,
                    right: right,
                    child: Container(
                        width: 120,
                        child: Image.asset(img, fit: BoxFit.scaleDown)),
                    width: width),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        service,
                        style: GoogleFonts.barlowCondensed(
                            shadows: [
                              Shadow(blurRadius: 20, color: Colors.blue[600])
                            ],
                            fontWeight: FontWeight.bold,
                            fontSize: 47,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        " " + provider,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 16,
                            color: Color(0xff4E295B),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            location,
                            style: TextStyle(
                              color: Color(0xff4E295B),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 53,
                      ),
                      NeumorphicButton(
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(30)),
                          shape: NeumorphicShape.convex,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  maintainState: false,
                                  builder: (context) => CourseInfoScreen(
                                      title,
                                      service,
                                      description,
                                      quantity,
                                      location,
                                      contact,
                                      price,
                                      provider,
                                      id)),
                            );
                          });
                        },
                        // color: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: Text(
                          'View Details',
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ));
    }
  }
}
// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   throw UnimplementedError();
// }
