import 'package:flutter/material.dart';

import '../main_drawer.dart';

class Links extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
        appBar: AppBar(
          title: Text("روابط"),
        ),
        body: null,
        drawer: MainDrawer(),
      ),
    );
  }
}
