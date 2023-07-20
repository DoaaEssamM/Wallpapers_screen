import 'package:flutter/material.dart';
import 'package:session_three/CounterScreen.dart';
import 'package:session_three/SliderScreen.dart';

void main(){
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        CounterScreen.routeName : (_)=> CounterScreen(),
        SliderScreen.routeName : (_)=> SliderScreen()
      },
      initialRoute: SliderScreen.routeName,
    );
  }
}
