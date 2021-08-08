import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(30),
                color: Color(0xffcc191f),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'القانون الدولي الإنساني',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'BalsamiqSans'),
              ),
              Text(
                'سؤال وجواب',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontFamily: 'BalsamiqSans'),
              ),

              SizedBox(
                height: 20,
              ),
              Divider( height: 10,),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('الصفحة الرئيسية'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              Divider( height: 10,),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('صور'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/Photos');
                },
              ),
              Divider( height: 10,),
              ListTile(
                leading: Icon(Icons.attach_file),
                title: Text('مصادر'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/Links');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
