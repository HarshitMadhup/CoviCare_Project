import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:phone_verification/loginScreen.dart';

class Requests extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sands of Time',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 10 days'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Monk Who Sold His Ferrari',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 10 days'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Acoustic Guitar Needed',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 1 week'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2TB Hard Drive Needed',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 1 week'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'I5 Laptop Needed',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 1 week'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hard Drive Needed',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 1 week'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Card(
              color: Colors.blue[100],
              margin: EdgeInsets.all(8),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Precision Mouse Needed',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Text(
                    //   'Description of the product ',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    Text('Duration:- 1 week'),
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
