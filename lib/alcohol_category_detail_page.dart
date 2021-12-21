import 'package:flutter/material.dart';

class AlcoholCategoryDetailPage extends StatelessWidget {
  ///TODO:4
  String? text;
  AlcoholCategoryDetailPage(this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ///TODO:5
        title: Text('$text'),
      ),
    );
  }
}
