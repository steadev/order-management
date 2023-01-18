import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '주문 내역',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('주문 내역'),
        ),
        body: Table(
          border: TableBorder.all(),
          children: [
            buildRow(['이름', '연락처', '송금확인', '배송확인'])
          ],
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells) =>
      TableRow(children: cells.map((cell) => Text(cell)).toList());
}
