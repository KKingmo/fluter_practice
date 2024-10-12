import 'package:flutter/material.dart'; // UI 구성 요소를 제공

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController idController = TextEditingController();
  String msg = '이 곳에 입력 값이 업데이트 됩니다';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('메인화면')),
        body: Column(
          children: [
            TextField(
              controller: idController,
              decoration: InputDecoration(labelText: '아이디를 입력해주세요'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  msg = idController.text.toString();
                });
              },
              child: Text('아이디 입력 값 가져오기'),
            ),
            Text(
              msg,
              style: TextStyle(fontSize: 30),
            )
          ],
        ));
  }
}
