import 'package:flutter/material.dart';

// mainが1番初めに呼ばれるところ
void main() {
  runApp(MyApp()); // runAppは引数必須
}

// StatelessWidgetはbuild関数必須らしい
class MyApp extends StatelessWidget {
  // class A extends B  はBを継承したA
  // This widget is the root of your application.
  @override // StatelessWidgetに必要なbuild関数をオーバーライドする
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialAppをreturnする
      // A:B のA部はMaterialAppに用意されているもの
      title: 'Flutter Demo', // タブに表示されるもの
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
          title: 'Flutter Demo Home Page'), // 実際にアプリ内に表示するwidgetを設定する．
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Row(children: [
        Icon(Icons.create),
        Text("初めてのタイトル"),
      ]
      )
    ),
    drawer: Drawer(child: Center(child: Text("Drawer"))),
    body: Text("初めてのテキスト"),
    floatingActionButton: FloatingActionButton(
      onPressed: () => {print("押したね？")},
      child: Icon(Icons.timer),
    ),
  );
}
  // body: Center(
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: <Widget>[
  //       const Text(
  //         'You have pushed the button this many times:',
  //       ),
  //       Text(
  //         '$_counter',
  //         style: Theme.of(context).textTheme.headline4,
  //       ),
  //     ],
  //   ),
  // ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
}
