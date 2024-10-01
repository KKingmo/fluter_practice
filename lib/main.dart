import 'package:flutter/material.dart'; // Material Design 스타일의 UI 구성 요소를 제공하는 패키지

import 'screen/main_screen.dart'; // MainScreen을 사용하기 위해 import
import 'screen/splash_screen.dart'; // SplashScreen을 사용하기 위해 import

void main() => runApp(const MyApp());
// Flutter 앱의 진입점. runApp()은 주어진 위젯을 화면에 띄움
// const MyApp()는 변하지 않는 값임을 나타내는 상수형 위젯으로, 성능 최적화를 위해 사용

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // const 생성자는 위젯이 변하지 않을 때 사용해 성능 향상
  // StatelessWidget은 상태(변하는 데이터)를 가지지 않는 위젯

  @override
  Widget build(BuildContext context) {
    // build() 메서드는 위젯 트리를 생성
    return MaterialApp(
      title: 'Flutter Demo',
      // 앱의 이름을 정의. 디버깅 시 사용됨
      initialRoute: '/',
      // 초기 경로(route)를 지정. 앱이 처음 시작할 때 보여줄 화면

      routes: {
        '/': (context) => SplashScreen(),
        // '/' 경로에서는 SplashScreen 위젯을 반환. 첫 화면
        '/main': (context) => MainScreen(),
        // '/main' 경로에서는 MainScreen 위젯을 반환
      },
    );
  }
}

// StatelessWidget은 변경되지 않는 UI를 렌더링하는데 적합
// MaterialApp은 Flutter에서 기본적으로 제공하는 앱 구조
// routes는 특정 경로에 따라 다른 화면을 보여줄 수 있게 하는 중요한 개념
// 이를 통해 다중 화면 네비게이션을 쉽게 구현
