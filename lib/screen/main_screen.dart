import 'package:flutter/material.dart'; // UI 구성 요소를 제공

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('메인화면')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('반갑습니다'),
            Text('저는 플러터 공부하는 오창모입니다.'),
            Text('좋은 하루되세요.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('안녕'), Text('반가워'), Text('가로로 쌓는 위젯입니다.')],
            ),
            Row(
              children: [
                Expanded(flex: 2, child: Text('오창모')),
                Expanded(child: Text('오창모')),
                Expanded(child: Text('오창모')),
              ],
            ),
            Container(
              width: 300,
              height: 100,
              margin: EdgeInsets.only(left: 16),
              alignment: Alignment.center,
              child: Text('오창모'),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            ),
            SizedBox(width: 100, height: 300, child: Text('오창모짱'))
          ]),
    );
  }
}
