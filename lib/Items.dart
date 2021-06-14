import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_verification/config.dart/colors.dart';
import 'package:phone_verification/course_info_screen.dart';

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
      this.provider);
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

  void select(BuildContext context) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (BuildContext context) => ItemDetails(
    //             url, contact, price, title, location, availability)));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // return ItemDetails(
          //     url, contact, price, title, location, availability);
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                top: service.contains("Oxygen") ? 20 : 47,
                right: service.contains("Oxygen") ? -60 : -40,
                child: service.contains("Oxygen")
                    ? Image.asset("assets/images/tank.png")
                    : Container(
                        width: 80,
                        height: 130,
                        child: Image.asset(
                          "lib/favpng_blood-donation-vector-graphics-health-care-heart.png",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                width: MediaQuery.of(context).size.width * 0.60,
              ),
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
                      height: 20,
                    ),
                    MaterialButton(
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
                                    )),
                          );
                        });
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
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

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   throw UnimplementedError();
// }