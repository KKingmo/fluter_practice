import 'package:flutter/material.dart';

class SubAScreen extends StatelessWidget {
  final String msg;

  SubAScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('서브 A 화면'),
              bottom: TabBar(tabs: [
                Tab(
                  text: 'Tab 1',
                ),
                Tab(
                  text: 'Tab 2',
                ),
                Tab(
                  text: 'Tab 3',
                ),
              ]),
            ),
            body: TabBarView(children: [
              Center(
                child: Text('Tab1 Content'),
              ),
              Center(
                child: Text('Tab2 Content'),
              ),
              Center(
                child: Text('Tab3 Content'),
              ),
            ])));
  }
}
