import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:phone_verification/screens/tweets_screen.dart';
import 'package:phone_verification/screens/resources_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'helper/widgets/MainDrawer.dart';
import 'screens/Add_resources_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:line_icons/line_icons.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final List<Widget> _pages = [
    ResourcesScreen(),
    Add_Resources_Screen(),
    TweetsScreen()
  ];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _selectPage(int index) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _selectedPageIndex = index;
        print(_selectedPageIndex);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: AppColors.primaryWhite,
      //   elevation: 0,
      //   shadowColor: Colors.white,
      //   bottomOpacity: 0.0,
      //   foregroundColor: Colors.transparent,
      //   title: Text(_selectedPageIndex == 0 ? "Rent" : "Lend"),
      //   actions: [
      //     TextButton(
      //       child: Text("Logout"),
      //       onPressed: () {
      //         //redirect
      //         _auth.signOut().then((value) => Navigator.push(context,
      //                 MaterialPageRoute(builder: (context) {
      //               return LoginScreen();
      //             })));
      //       },
      //     ),
      //   ],
      // ),
      // drawer: MainDrawer(),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
            child: GNav(
                tabActiveBorder: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                // tab button border
                // tabActivehadow: [
                //   BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                // ], // tab button shadow
                curve: Curves.easeOut, // tab animation curves
                tabMargin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.5),
                // tabBackgroundGradient:
                //     LinearGradient(colors: [Colors.black, Colors.white]),
                backgroundColor: Colors.transparent,
                rippleColor: Colors.grey[300],
                hoverColor: Colors.grey[100],
                gap: 8,
                activeColor: Colors.blue[200],
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 500),
                // tabBackgroundColor: Colors.black,
                color: Colors.blue,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.upload_rounded,
                    text: 'Add Resources',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.twitter,
                    text: 'Tweets',
                  ),
                ],
                selectedIndex: _selectedPageIndex,
                onTabChange: _selectPage),
          ),
        ),
      ),
    );
    // FlashyTabBar(showElevation: true,
    //   height: .00,
    //   selectedIndex: _selectedPageIndex,
    //   items: [
    //     FlashyTabBarItem(
    //         icon: Icon(
    //           Icons.medical_services,
    //           size: 25,
    //         ),
    //         title: Text("Resources"),
    //         activeColor: Colors.blue[200]),
    //     FlashyTabBarItem(
    //       icon: Icon(Icons.upload_outlined, size: 25),
    //       title: Text("Add Resource"),
    //       activeColor: Colors.blue[200],
    //     ),
    //     FlashyTabBarItem(
    //       inactiveColor: Colors.white,
    //       icon: (Icon(
    //         Icons.search,
    //         size: 25,
    //       )),
    //       activeColor: Colors.blue[200],
    //       title: Text("Tweets"),
    //     )
    //   ],
    //   // color: Colors.black,
    //   backgroundColor: Colors.black,
    //   iconSize: 25,
    //   animationCurve: Curves.easeIn,
    //   animationDuration: Duration(milliseconds: 2000),

    //   onItemSelected: (index) {
    //     setState(() {
    //       _selectedPageIndex = index;
    //     });
    //   },
    // )
    //
  }
}
