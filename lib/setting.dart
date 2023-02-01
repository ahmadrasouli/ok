import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('تنظیمات1'),
        Text('تنظیمات2'),
        Text('تنظیمات3'),
        Text('تنظیمات41'),
        Text('تنظیمات5'),
        Text('تنظیمات6'),



      ],


    );
  }
}
