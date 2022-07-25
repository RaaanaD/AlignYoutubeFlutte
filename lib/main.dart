import 'package:align_youtube/part.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          body: SafeArea(
        //★表示可能な範囲
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('YouTube'),
                Row(
                  children: const [
                    Icon(Icons.search_rounded),
                    Icon(Icons.description),
                  ],
                ),
              ],
            ),
            Part(text: 'サムネイル', color: Colors.white),
            Part(text: 'サムネイル', color: Colors.white),
          ],
        ),
      )),
    );
  }
}
