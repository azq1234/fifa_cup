import 'package:flutter/material.dart';
import 'my_tar_bar_page.dart' show  MyTabBarPage;
class MyApp extends StatefulWidget {
  MyApp({super.key,required this.title});
  final String title;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        highlightColor: Color.fromRGBO(1, 0, 0, 0),
        splashColor: Color.fromRGBO(1, 0, 0, 0),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTabBarPage(title: 'MyTabBarPage',),
    );
  }
}
