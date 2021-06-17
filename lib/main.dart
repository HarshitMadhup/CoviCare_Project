import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:phone_verification/screens/loginScreen.dart';
import 'package:phone_verification/tabView.dart';

// import './screens/loginScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(App());
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen(),
    );
  }
}

    // FutureBuilder(
    //   // Initialize FlutterFire:
    //   future: _initialization,
    //   builder: (context, snapshot) {
    //     // Check for errors
    //     if (snapshot.hasError) {
    //       return Center(
    //         child: Text('Could not load app'),
    //       );
    //     }

    //     // Once complete, show your application
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return MaterialApp(
    //         title: 'Phone Verification',
    //         debugShowCheckedModeBanner: false,
    //         theme: ThemeData(
    //             primaryColor: Colors.blue[200],
    //             primarySwatch: Colors.purple,
    //             inputDecorationTheme: InputDecorationTheme(
    //                 labelStyle: TextStyle(color: Colors.grey)),
    //             backgroundColor: Colors.white),
    //         home: LoginScreen(),
    //       );
    //     }

    //     // Otherwise, show something whilst waiting for initialization to complete
    //     return Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: <Widget>[
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignmen                                                            t.center,
    //             children: <Widget>[
    //               CircularProgressIndicator(
    //                 backgroundColor: Theme.of(context).primaryColor,
    //               )
    //             ],
    //           )
    //         ]);
    //   },
    // );
//   }
// }
// Navigator.pushAndRemoveUntil(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                       builder: (BuildContext
//                                                               context) =>
//                                                           LoggedInScreen(),
//                                                     ),
//                                                     (route) => true,
//                                                   );
//                                                 }
//                                                   )}
//                                             )