import 'package:flutter/material.dart';
import 'package:icrc_project/Screens/links.dart';
import 'package:icrc_project/Screens/resources.dart';
import 'package:icrc_project/SearchMethod.dart';
import 'Screens/answers.dart';
import 'carousel.dart';
import 'main_drawer.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        theme: ThemeData (primaryColor: Color(0xffcc191f),
          accentColor: Color(0xffcc191f)
        ),
        title: 'ICRC',
        routes: {
          '/': (context)=> MyHomePage(),
          Answers.routeName: (context)=> Answers(),
          '/home_p': (context)=> Home_P(),
          '/Links': (context)=> Links(),
          '/Resources': (context)=> Resources(),

        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('القانون الدولي الإنساني'),

        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Caru(),
                SizedBox(
                  height: 15,
                ),
                Text("الأسئلة المتكررة", style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 5,
                ),
                Home_P(),
              ],
            )),


        floatingActionButton: FloatingActionButton.extended(
          onPressed: () { showSearch(context: context, delegate: SearchMethod()); },
          label: Text('ابحث عن سؤال محدد',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
          icon: Icon(Icons.search),
        ),
        drawer: MainDrawer(),
      ),
    );
  }
}
