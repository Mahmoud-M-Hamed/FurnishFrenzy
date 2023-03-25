import 'Package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/home_directory/home_activity/home_activity.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [],
  );
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture',
      home: const HomeActivity(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff3e9dc),
      ),
    );
  }
}
