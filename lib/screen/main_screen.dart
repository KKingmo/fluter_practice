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
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(32),
          width: 200,
          height: 70,
          child: ElevatedButton(
              onPressed: () {
                // 클릭 되었을때 동작하고 싶은 액션 정의
                print('버튼이 클릭되었습니다');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  elevation: 0),
              child: Text('눌러보세요!')),
        )
      ]),
    );
  }
}
