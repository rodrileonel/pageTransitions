import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orange,
        child: Center(child: Text('Page 2')),
      ),
    );
  }
}