import 'package:fase5atv/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    title: 'Login',
    theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
    home: Login(),
  );
  }

}
