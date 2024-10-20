import 'package:flutter/material.dart'; // Material Design 기반 UI 구성요소 제공

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/main');
    });

    return Scaffold(
        body: Center(
      child: Text('시작 화면 입니다'),
      // 화면에 표시될 텍스트
    ));
  }
}
