import 'package:flutter/material.dart';

// main 함수는 Flutter 앱의 진입점으로, runApp 함수로 MyApp 위젯을 실행합니다.
void main() => runApp(const MyApp());

// MyApp은 StatelessWidget으로, 상태를 가지지 않는 위젯입니다.
// 앱 전체의 구조와 테마를 정의합니다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱의 타이틀을 지정합니다.
      title: 'Flutter Demo',
      // 앱의 테마를 정의합니다. Material 3 디자인을 사용하며, 기본 색상으로 보라색 계열을 사용합니다.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // 앱이 시작될 때 보여줄 첫 화면을 지정합니다. 여기서는 MainScreen 위젯을 표시합니다.
      home: const MainScreen(),
    );
  }
}

// MainScreen은 StatefulWidget으로, 상태를 가지는 위젯입니다.
// 상태 변화에 따라 화면이 다시 그려질 수 있습니다.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  // _MainScreenState 클래스가 상태를 관리합니다.
  @override
  State<MainScreen> createState() => _MainScreenState();
}

// _MainScreenState는 MainScreen의 상태를 나타내는 클래스입니다.
class _MainScreenState extends State<MainScreen> {
  // msg 변수는 화면에 표시될 텍스트를 저장합니다.
  String msg = '오창모';

  // 위젯이 처음 생성될 때 호출되는 메서드로, 초기 상태 설정을 처리합니다.
  @override
  void initState() {
    super.initState();

    // 3초 후에 msg 값을 '오창모 짱'으로 변경하는 비동기 작업을 실행합니다.
    Future.delayed(Duration(seconds: 3), () {
      // setState 함수는 상태를 변경하고 화면을 다시 그리도록 합니다.
      setState(() {
        msg = '오창모 짱';
      });
    });
  }

  // 화면에 그려질 UI를 정의하는 메서드입니다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 상단의 앱바를 정의합니다.
      appBar: AppBar(
        title: Text('나의 첫 앱'), // 앱바에 표시될 제목입니다.
      ),
      // 화면의 본문 부분에 msg 변수를 텍스트로 표시합니다.
      body: Text(msg),
    );
  }
}
