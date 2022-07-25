import 'package:flutter/material.dart';

class Part extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  String text;
  Color color;

  Part({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          //サムネイル表示
          alignment: Alignment.bottomRight,
          children: [
            AspectRatio(
              //サムネイル画像表示
              aspectRatio: 16 / 9, // 縦16：横：9
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.grey,
                child: Text(text),
              ),
            ),
            Padding(
              //サムネイル右下の時間表示
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  '12:00',
                  style: TextStyle(color: color),
                ),
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
                Container(
                  //左丸アイコン表示
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                Column(
                  //タイトルやチャンネル名を表示
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '動画タイトルを表示',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text('チャンネル名・1000回視聴・1年前'),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
