import 'package:flutter/material.dart';
import 'package:icrc_project/main_drawer.dart';

class Photos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("صور"),
        ),
        body: null,
        drawer: MainDrawer(),
      ),
    );
  }
}
