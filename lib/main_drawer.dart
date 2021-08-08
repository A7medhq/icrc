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
                padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                height: 200,
                width: double.infinity,
                color: Color(0xffcc191f),
                child: Image(image: AssetImage('assets/images/Logo.png'),

                )
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
              Divider(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('الصفحة الرئيسية'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text('روابط خارجية'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/Links');
                },
              ),
              Divider(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.attach_file),
                title: Text('مصادر'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/Resources');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
