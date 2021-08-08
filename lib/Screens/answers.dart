import 'package:flutter/material.dart';
import 'package:icrc_project/subject.dart';

class Answers extends StatelessWidget {
  static const routeName = '/Answers';

  @override
  Widget build(BuildContext context) {

    final Map args = ModalRoute.of(context)!.settings.arguments as Map;
final answr = subject[args['quest']];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("السؤال والإجابة"),
        ),
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.question_answer),
                  title: Text(args['quest'], style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text(answr!, style: TextStyle(
                    color: Colors.black87
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
