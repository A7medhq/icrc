import 'package:flutter/material.dart';

import '../main_drawer.dart';

class Resources extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
        appBar: AppBar(
          title: Text("المصادر"),
        ),
        body: null,
        drawer: MainDrawer(),
      ),
    );
  }
}
