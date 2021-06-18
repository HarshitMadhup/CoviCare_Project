// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:phone_verification/registerScreen.dart';

// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:phone_verification/tabView.dart';

// // import 'main_home.dart';

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return NeumorphicApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       themeMode: ThemeMode.light,
//       theme: NeumorphicThemeData(
//         baseColor: Colors.blue[100],
//         lightSource: LightSource.topLeft,
//         depth: 10,
//       ),
//       darkTheme: NeumorphicThemeData(
//         baseColor: Color(0xFF3E3E3E),
//         lightSource: LightSource.topLeft,
//         depth: 6,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key}) : super(key: key);

//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: NeumorphicFloatingActionButton(
//         child: Icon(Icons.add, size: 30),
//         onPressed: () {},
//       ),
//       backgroundColor: NeumorphicTheme.baseColor(context),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           // SizedBox(height: 70),
//           Padding(
//             padding: EdgeInsets.fromLTRB(20, 70, 0, 170),
//             child: Text("CoviCare",
//                 style: GoogleFonts.notoSans(
//                     fontSize: 60, fontWeight: FontWeight.normal)),
//           ),
//           NeumorphicButton(
//             onPressed: () {
//               print("onClick");
//             },
//             style: NeumorphicStyle(
//               shape: NeumorphicShape.flat,
//               boxShape: NeumorphicBoxShape.circle(),
//             ),
//             padding: const EdgeInsets.all(12.0),
//             child: Icon(
//               Icons.favorite_border,
//               color: _iconsColor(context),
//             ),
//           ),
//           NeumorphicButton(
//               margin: EdgeInsets.only(top: 12),
//               onPressed: () {
//                 NeumorphicTheme.of(context).themeMode =
//                     NeumorphicTheme.isUsingDark(context)
//                         ? ThemeMode.light
//                         : ThemeMode.dark;
//               },
//               style: NeumorphicStyle(
//                 shape: NeumorphicShape.convex,
//                 boxShape:
//                     NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
//               ),
//               padding: const EdgeInsets.all(12.0),
//               child: Text(
//                 "Toggle Theme",
//                 style: TextStyle(color: _textColor(context)),
//               )),
//           NeumorphicButton(
//               margin: EdgeInsets.only(top: 12),
//               onPressed: () {
//                 Navigator.of(context)
//                     .pushReplacement(MaterialPageRoute(builder: (context) {
//                   return TabsScreen();
//                 }));
//               },
//               style: NeumorphicStyle(
//                 shape: NeumorphicShape.flat,
//                 boxShape:
//                     NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
//                 //border: NeumorphicBorder()
//               ),
//               padding: const EdgeInsets.all(12.0),
//               child: Text(
//                 "Go to full sample",
//                 style: TextStyle(color: _textColor(context)),
//               )),
//         ],
//       ),
//     );
//   }

//   Color _iconsColor(BuildContext context) {
//     final theme = NeumorphicTheme.of(context);
//     if (theme.isUsingDark) {
//       return theme.current.accentColor;
//     } else {
//       return null;
//     }
//   }

//   Color _textColor(BuildContext context) {
//     if (NeumorphicTheme.isUsingDark(context)) {
//       return Colors.white;
//     } else {
//       return Colors.black;
//     }
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 70.0,
//             ),
//             //

//             //
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 10.0,
//               ),
//               child: ElevatedButton(
//                 onPressed: () {
//                   signInWithGoogle(context);
//                 },
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Continue With Google",
//                       style: TextStyle(
//                         fontSize: 20.0,
//                         fontFamily: "lato",
//                       ),
//                     ),
//                     //
//                     SizedBox(
//                       width: 10.0,
//                     ),
//                     //
//                     Image.asset(
//                       'assets/images/google.png',
//                       height: 36.0,
//                     ),
//                   ],
//                 ),
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                       Colors.grey[700],
//                     ),
//                     padding: MaterialStateProperty.all(
//                       EdgeInsets.symmetric(
//                         vertical: 12.0,
//                       ),
//                     )),
//               ),
//             ),
//             //
//             SizedBox(
//               height: 10.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // import 'dart:io';

// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/material.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:flutter/services.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // // import 'package:firebase_storage/firebase_storage.dart';

// // import '../widgets/auth_form.dart';

// // class AuthScreen extends StatefulWidget {
// //   @override
// //   _AuthScreenState createState() => _AuthScreenState();
// // }

// // class _AuthScreenState extends State<AuthScreen> {
// //   final _auth = FirebaseAuth.instance;
// //   var _isLoading = false;

// //   void 
// //   _submitAuthForm(
// //     String email,
// //     String password,
// //     String username,
// //     // File image,
// //     bool isLogin,
// //     BuildContext ctx,
// //   ) async {
// //     UserCredential authResult;

// //     try {
// //       setState(() {
// //         _isLoading = true;
// //       });
// //       if (isLogin) {
// //         authResult = await _auth.signInWithEmailAndPassword(
// //           email: email,
// //           password: password,
// //         );
// //       } else {
// //         authResult = await _auth.createUserWithEmailAndPassword(
// //           email: email,
// //           password: password,
// //         );

// //         // final ref = FirebaseStorage.instance
// //         //     .ref()
// //         //     .child('user_image')
// //         //     .child(authResult.user.uid + '.jpg');

// //         // await ref.putFile(image).onComplete;

// //         // final url = await ref.getDownloadURL();

// //         await FirebaseFirestore.instance
// //             .collection('users')
// //             .doc(authResult.user.uid)
// //             .set({
// //           'username': username,
// //           'email': email,
// //         });
// //       }
// //     } on PlatformException catch (err) {
// //       var message = 'An error occurred, pelase check your credentials!';

// //       if (err.message != null) {
// //         message = err.message;
// //       }

// //       Scaffold.of(ctx).showSnackBar(
// //         SnackBar(
// //           content: Text(message),
// //           backgroundColor: Theme.of(ctx).errorColor,
// //         ),
// //       );
// //       setState(() {
// //         _isLoading = false;
// //       });
// //     } catch (err) {
// //       print(err);
// //       setState(() {
// //         _isLoading = false;
// //       });
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white12,
// //       body: AuthForm(
// //         _submitAuthForm,
// //         _isLoading,
// //       ),
// //     );
// //   }
// // }
