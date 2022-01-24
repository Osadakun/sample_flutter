import 'package:flutter/material.dart';
import 'package:sample_project/page_sample/TestPage2.dart';
class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test1"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {
                      Navigator.pushNamed(context, "/test2")
                    },
                child: Text("進む", style: TextStyle(fontSize: 80)))));
  }
}