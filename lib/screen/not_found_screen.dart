import 'package:flutter/material.dart';
 import 'package:untitled9/shared/components/component.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: buildLoadingSearch(context),
    );
  }
}
