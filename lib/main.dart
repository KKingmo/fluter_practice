import 'package:day_guess/provider/counter_provider.dart';
import 'package:day_guess/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // ChangeNotifierProvider를 사용해 CounterProvider를 애플리케이션 전반에 제공
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CounterProvider(), // Provider 생성
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

// MyApp 위젯
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// MyHomePage 위젯
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// _MyHomePageState는 실제 UI를 구성하고 상태 관리를 구현
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // AppBar 제목 설정
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 세로 가운데 정렬
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Consumer 위젯을 사용해 CounterProvider에서 제공하는 count 값을 구독
            Consumer<CounterProvider>(
              builder: (context, value, child) => Text(
                '${value.count}', // count 값을 화면에 표시
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),

            Consumer<ThemeProvider>(
                builder: (context, value, child) => Switch(
                      value: value.isDarkMode,
                      onChanged: (_) => value.toggleTheme(),
                    )),
          ],
        ),
      ),
      // FloatingActionButton을 눌렀을 때 CounterProvider의 increment 메서드를 호출해 count를 증가시킴
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterProvider>().increment(), // 상태 업데이트
        tooltip: 'Increment',
        child: const Icon(Icons.add), // 버튼 아이콘 설정
      ),
    );
  }
}
