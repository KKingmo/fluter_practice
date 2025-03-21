import 'package:flutter/material.dart';

class SubScreen extends StatelessWidget {
  final String msg;

  SubScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        // 기본 버튼 off
        automaticallyImplyLeading: false,
        // 직접 기본 버튼 넣기
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('뒤로가기'),
        ),
        title: Text('서브 화면'),
        actions: [
          Icon(Icons.ac_unit_outlined),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text('앱바 커스텀 해본 화면 입니다. ${msg}'),
          ),
          TextButton(
            onPressed: () {
              // 현재 화면 스택 제거
              Navigator.pop(context);
            },
            child: Text('뒤로가기'),
          )
        ],
      ),
    );
  }
}
