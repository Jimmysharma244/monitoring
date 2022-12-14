import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/pages/Mainpage.dart';
import 'package:flutter_complete_guide/pages/changePassword.dart';
import 'package:flutter_complete_guide/pages/extra.dart';
import 'package:flutter_complete_guide/pages/parentsignup.dart';
import 'package:flutter_complete_guide/pages/ques-Ans.dart';
import 'package:flutter_complete_guide/pages/register_option.dart';
import 'package:flutter_complete_guide/pages/schoolHome.dart';
import 'package:flutter_complete_guide/pages/schoolReg.dart';
import 'package:flutter_complete_guide/pages/signup.dart';
import 'package:flutter_complete_guide/pages/studentHome.dart';
import 'package:flutter_complete_guide/pages/studentReg.dart';
import 'package:flutter_complete_guide/pages/teacherReg.dart';
import 'package:flutter_complete_guide/utils/routes.dart';
import './pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


@override
  Widget build(BuildContext context) {
    return MaterialApp(
     themeMode:ThemeMode.light,
      theme:ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.ques_AnsRoute: (context) => ques_Ans(),
        Myroutes.loginRoute: (context) => LoginPage(),
        Myroutes.MainRoute:(context)=> Mainpage(),
        Myroutes.schoolReG:(context) => schoolReg(),
        Myroutes.schoolHome:(context) => schoolHome(),
        Myroutes.studentHome:(context) => studentHome(),
        Myroutes.studentReg:(context) => studentReg(),
        Myroutes.register_option:(context) => register_option(),
        Myroutes.parentsignup:(context) => parentsignup(),
        // Myroutes.extra:(context) => extra(),
        Myroutes.teacherReg:(context) => teacherReg(),
        Myroutes.changePassword:(context) => changePassword(),

      },
    );
  }
}
