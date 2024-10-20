import 'package:day_guess/screen/sub_screen.dart';
import 'package:flutter/material.dart'; // Material Design 스타일의 UI 구성 요소를 제공하는 패키지

import 'screen/main_screen.dart'; // MainScreen을 사용하기 위해 import
import 'screen/splash_screen.dart'; // SplashScreen을 사용하기 위해 import

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        '/main': (context) => MainScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/sub') {
          String msg = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return SubScreen(
                msg: msg,
              );
            },
          );
        }
        return null;
      },
    );
  }
}
