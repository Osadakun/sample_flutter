// 画面回転に関するソースコード

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: "Test App",
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData.dark(),
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Test App")),
//       body: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         return constraints.maxWidth < constraints.maxHeight
//             ? _buildVertical(context)
//             : _buildHorizontal(context);
//       },
//     );
//   }

//   Widget _buildVertical(BuildContext context) {
//     // 縦向きの場合
//     return Container(
//       alignment: Alignment.center,
//       color: Colors.blue,
//       child: Text("タテ", style: TextStyle(fontSize: 32)),
//     );
//   }

//   Widget _buildHorizontal(BuildContext context) {
//     // 横向きの場合
//     return Container(
//       alignment: Alignment.center,
//       color: Colors.pink,
//       child: Text("ヨコ", style: TextStyle(fontSize: 32)),
//     );
//   }
// }