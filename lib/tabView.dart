import 'package:flutter/material.dart';
import 'package:phone_verification/config.dart/colors.dart';
import 'package:phone_verification/rentscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'MainDrawer.dart';
import 'Requests.dart';
import 'lend.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'config.dart/colors.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<Widget> _pages = [RentScreen(), LendScreen(), Requests()];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      print(_selectedPageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.white,
          bottomOpacity: 0.0,
          backgroundColor: Colors.indigo[200],
          foregroundColor: Colors.transparent,
          title: Text(_selectedPageIndex == 0 ? "Rent" : "Lend"),
          actions: [
            TextButton(
              child: Text("Logout"),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
        ),
        drawer: MainDrawer(),
        // drawer: MainDrawer(),
        body: _pages[_selectedPageIndex],
        bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(
              Icons.medical_services,
              size: 30,
              semanticLabel: "Rent",
            ),
            Icon(Icons.upload_outlined, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.blue[200],
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 500),
          height: 50.0,
          onTap: (index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
        ));
  }
}
