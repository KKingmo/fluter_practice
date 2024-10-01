import 'package:flutter/material.dart'; // Material Design 기반 UI 구성요소 제공

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  // SplashScreen은 StatelessWidget으로, 상태가 변하지 않는 화면을 구성

  @override
  Widget build(BuildContext context) {
    // build() 메서드로 UI를 정의. StatelessWidget은 매번 새로운 상태를 그리지 않음
    Future.delayed(Duration(seconds: 2), () {
      // 2초 후에 특정 작업을 수행하는 비동기 코드. 화면 전환 기능을 구현
      Navigator.pushNamed(context, '/main');
      // Navigator는 화면 간의 전환을 담당하는 클래스. '/main' 경로로 화면 전환
    });

    return Scaffold(
      // Scaffold는 기본 화면 레이아웃을 제공하는 위젯
        body: Center(
          // 화면 중앙에 UI 요소를 배치하기 위한 레이아웃 도우미
          child: Text('시작 화면 입니다'),
          // 화면에 표시될 텍스트
        ));
  }
}

// 이 코드는 Flutter의 기본 화면 전환 방식을 이해하는 데 도움을 줌
// Navigator와 routes는 화면 간의 네비게이션을 처리하는 주요 도구
// SplashScreen에서는 단순히 2초 후에 메인 화면으로 이동하는 기능을 구현
