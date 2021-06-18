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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen(),
    );
  }
}
