import 'package:flutter/material.dart';
import 'package:phone_verification/ItemDetails.dart';
import 'package:phone_verification/config.dart/colors.dart';

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
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primaryWhite,
            boxShadow: AppColors.neumorpShadow,
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 20,
                right: -60,
                child: Image.asset(
                  "assets/images/tank.png",
                  width: MediaQuery.of(context).size.width * 0.60,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      service,
                      style: TextStyle(
                          shadows: [
                            Shadow(blurRadius: 10, color: Colors.blue[600])
                          ],
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      provider,
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          size: 16,
                          color: Color(0xff4E295B),
                        ),
                        SizedBox(
                          width: 10,
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (){}));
                      },
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'View Details',
                        style: TextStyle(
                          color: Colors.white,
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
