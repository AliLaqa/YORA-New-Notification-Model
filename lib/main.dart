import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';
import 'package:yoracustomer/HomePage.dart';
import 'package:yoracustomer/OTPNumber.dart';
import 'package:yoracustomer/Services/CustomNotification.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SplashScreen.dart';
import 'LinkFiles/firebase_options.dart';
import 'dart:io';

Future<void> backgroundHandler(RemoteMessage message) async {
  CustomNotification.display(message);
}


Future<void> main() async {

try{
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );

  await FirebaseMessaging.instance.getInitialMessage();
  //LocalNotificationService.initialize();
}
catch(e){

}
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  SharedPreferences? prefs ;
  bool? isLoggedIn=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*FirebaseMessaging.onMessage.listen((event) {
      print("Main.dart");
      LocalNotificationService.display(event);
    });*/
    FirebaseMessaging.onMessage.listen((event) {
      print("notification");
      CustomNotification.display(event);
    });
  }
  @override
  Widget build(BuildContext context) {
    CustomNotification.init();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/home': (context) => Homepage(),
        '/splash': (context) => const SplashScreen(),
        //'/otpNumber': (context) => const OTPNumber(),
      },
      initialRoute: '/splash',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),

    );
  }
}

//   Future<void> getsharedpreference() async {
//     prefs= await SharedPreferences.getInstance();
//     isLoggedIn= prefs?.getBool('isLoggedIn') ?? false;
//     print(isLoggedIn);
//     if(isLoggedIn==true){
//       Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) =>  Homepage()));
//     }else{
//       Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) =>  LoginPage()));
//     }
//
//   }
// }
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp( MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: FutureBuilder<SharedPreferences>(
//         future: _prefs,
//         builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
//           if (snapshot.hasData) {
//             bool? isLoggedIn = snapshot.data!.getBool('isLoggedIn');
//             print(isLoggedIn);
//             return isLoggedIn==true ?  Homepage() : const LoginPage();
//           } else {
//             return const Scaffold(
//               body: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }


