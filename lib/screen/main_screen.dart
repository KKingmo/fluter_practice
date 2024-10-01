import 'package:flutter/material.dart'; // UI 구성 요소를 제공

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  // StatefulWidget은 상태가 변경될 수 있는 위젯을 구성

  @override
  State<MainScreen> createState() => _MainScreenState();
// 상태를 관리할 State 클래스를 생성
}

class _MainScreenState extends State<MainScreen> {
  // StatefulWidget과 달리 State는 UI가 변경될 때마다 재빌드됨

  @override
  Widget build(BuildContext context) {
    // build() 메서드에서 UI 트리를 생성
    return Scaffold(
      body: Center(
        child: Text('메인 화면 입니다.'),
        // 메인 화면에 표시될 텍스트
      ),
    );
  }
}

// StatefulWidget은 상태 관리가 필요한 화면을 만들 때 사용
// State 클래스는 상태가 변경되면 UI를 업데이트하는 역할을 함
// SplashScreen과 달리 MainScreen은 사용자의 상호작용이나 상태에 따라 UI가 달라질 수 있음
