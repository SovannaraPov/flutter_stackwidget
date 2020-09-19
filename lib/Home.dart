import 'package:flutter/material.dart';

import 'DetailApp.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Food App'),
        ),
        body: SafeArea(
          child: DetailApp(),
        ));
  }
}
