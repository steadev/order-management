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
          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),
          },
          children: [
            buildRow(['이름', '연락처', '송금확인', '배송확인']),
            buildRow(['이명주', '01029541187', 'O', 'X'])
          ],
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells) =>
      TableRow(children: cells.map((cell) => Text(cell)).toList());
}
