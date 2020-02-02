import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hair_cos/Models/User.dart';
import 'package:hair_cos/Screens/wrapper.dart';
import 'package:hair_cos/Services/Authentication.dart';
import 'package:hair_cos/Services/Database.dart';
import 'package:hair_cos/StateContainers/LoginStateContainer.dart';
import 'package:provider/provider.dart';

void main() {
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StateContainer(
      child: StreamProvider<User>.value(
        value: AuthenticationServices().user,
        child: MaterialApp(
          home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Wrapper(),
          ),
        ),
      ),

      database: DatabaseServices(
        User(uid: "1bibekb4bdkbids"),
      ),
    );
  }
}

// MediaQuery.of(context).size.width;
