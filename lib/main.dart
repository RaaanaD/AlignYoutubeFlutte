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

          body: SafeArea( //★表示可能な範囲
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('YouTube'),
                Row(
                  children: [
                    Icon(Icons.search_rounded),
                    Icon(Icons.description),
                  ],
                ),
              ],
            ),


            Column(
              children: [
                Stack(//サムネイル表示
                  alignment: Alignment.bottomRight,
                  children: [
                    AspectRatio(//サムネイル画像表示
                      aspectRatio: 16/9, // 縦16：横：9
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: Colors.grey,
                        child: Text('サムネイル'),
                      ),
                    ),
                    Padding( //サムネイル右下の時間表示
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Text('12:00', style: TextStyle(color: Colors.white),),
                        // height: 50,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container( //左丸アイコン表示
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column( //タイトルやチャンネル名を表示
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('動画タイトルを表示', style: TextStyle(fontSize: 18),),
                        Text('チャンネル名・1000回視聴・1年前'),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.more_vert),
              ],
            ),
              ],
            ),



            Column(
              children: [
                Stack(//サムネイル表示
                  alignment: Alignment.bottomRight,
                  children: [
                    AspectRatio(//サムネイル画像表示
                      aspectRatio: 16/9, // 縦16：横：9
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        color: Colors.grey,
                        child: Text('サムネイル'),
                      ),
                    ),
                    Padding( //サムネイル右下の時間表示
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Text('12:00', style: TextStyle(color: Colors.white),),
                        // height: 50,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container( //左丸アイコン表示
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Column( //タイトルやチャンネル名を表示
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('動画タイトルを表示', style: TextStyle(fontSize: 18),),
                            Text('チャンネル名・1000回視聴・1年前'),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert),
                  ],
                ),
              ],
            ),

          ],
        ),
      )),
    );
  }
}
