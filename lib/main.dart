// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:import_sorter/args.dart';
import 'package:import_sorter/files.dart';
import 'package:import_sorter/sort.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key}) : super(key: key);

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const String assetName = 'assets/images.svg';
final Widget dashRus = SvgPicture.asset(
  assetName,
  semanticsLabel: 'Acme Logo',
  color: Colors.lightBlue,
);

var newCarouselSlider = CarouselSlider(options: CarouselOptions(
      height: 200,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: true,
      enlargeCenterPage: true,
      onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   ),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          decoration: const BoxDecoration(
            color: Colors.lightBlue
          ),
          child: Text('№$i', style: const TextStyle(fontSize: 20.0),)
        );
      },
    );
  }).toList());



class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( 
      ),
      body: Center( 
        child: Column(
        mainAxisSize: MainAxisSize.min,
          children: <Widget>[dashRus,
              newCarouselSlider
          ]
        ),
      ),
      
    );
  }
}

callbackFunction(int index, CarouselPageChangedReason reason) {
}
