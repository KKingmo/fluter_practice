import 'package:flutter/cupertino.dart';

// CounterProvider는 ChangeNotifier를 상속받아 상태 변화를 알리는 역할을 한다.
class CounterProvider extends ChangeNotifier {
  // _count는 비공개로 관리되는 상태 변수로, 외부에서 직접 접근할 수 없다.
  int _count = 0;

  // Getter를 통해 _count 값을 외부에서 읽을 수 있도록 제공.
  int get count => _count;

  // increment() 메서드는 _count를 증가시키고 notifyListeners()를 호출하여
  // 이 Provider를 구독하고 있는 위젯들에게 상태가 변경되었음을 알림.
  void increment() {
    _count++;
    notifyListeners(); // 구독하고 있는 대상 위젯들에게 데이터가 변경되었다고 알림
  }
}
