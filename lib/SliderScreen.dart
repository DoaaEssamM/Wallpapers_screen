import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  static const String routeName = 'slider-screen';

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int imagePos = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Image.asset('assets/images/$imagePos.jpg')),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    imagePos--;
                    if (imagePos == 0) {
                      imagePos = 3;
                    }
                  });
                },
                child: const Icon(Icons.navigate_before),
              ),
              FloatingActionButton(

                onPressed: () {
                  setState(() {
                    imagePos++;
                    if (imagePos == 4) {
                      imagePos = 1;
                    }
                  });
                },
                child: const Icon(Icons.navigate_next),
              )
            ],
          )
        ],
      ),
    );
  }
}
