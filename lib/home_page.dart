import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icrc_project/subject.dart';

import 'Screens/answers.dart';

class Home_P extends StatefulWidget {

  @override
  _Home_PState createState() => _Home_PState();
}


class _Home_PState extends State<Home_P> {


final ques = subject.keys.toList();
final anwrs = subject.values.toList();

List c = [];

void myMethod (){

  for (var i = 0; c.length<4; i++){
    var cItemIndex = Random().nextInt(ques.length);
    if (cItemIndex>0){
      var item = ques[cItemIndex];
      if (!c.asMap().containsValue(item)){
        c.add(item);
      }}}

}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    myMethod();
  }
@override
  Widget build(BuildContext context) {

  return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0,2,0,2),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(
                          Answers.routeName,
                          arguments: {
                           'quest' : c[index]
                          }
                        );
                      },
                      child: Card(
                        elevation: 1,
                        color: index%2 == 0? Color(0xffcc191f): Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Icon(Icons.question_answer,color: index%2 == 0? Colors.white: Colors.black,),
                              title: Text(c[index], style: TextStyle(
                                fontWeight:FontWeight.bold,
                                color: index%2 == 0? Colors.white: Colors.black,
                              ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                });



  }
}
