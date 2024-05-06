import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr_absen_rapli/view/homepage.dart';
import 'package:qr_absen_rapli/view/profilpage.dart';
import 'package:qr_absen_rapli/view/rekappage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCClOfzT-T8HScGyy9QDze-Lbd2ChJNPV0",
          appId: "1:1057828875594:android:b6ffc82e25883be6a9e5b3",
          messagingSenderId: "1057828875594",
          projectId: "qrabsen-rapli"));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentI = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [HomePage(), Rekap(), profilPage()];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: widgets[currentI],
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.react,
            backgroundColor: Colors.white,
            activeColor: Color(0xFFABD6E4),
            color: Colors.grey,
            items: [
              TabItem(
                icon: FontAwesomeIcons.house,
              ),
              TabItem(
                icon: FontAwesomeIcons.map,
              ),
              TabItem(
                icon: FontAwesomeIcons.user,
              ),
            ],
            onTap: (int i) {
              setState(() {
                currentI = i;
              });
            },
          )),
    );
  }
}
