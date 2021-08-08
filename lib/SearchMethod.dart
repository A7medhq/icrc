import 'package:flutter/material.dart';
import 'package:icrc_project/subject.dart';

import 'history.dart';

class SearchMethod extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if(query.isEmpty){
              close(context, null);
            }
            query = '';
showSuggestions(context);
},
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: AnimatedIcon(
          progress: transitionAnimation,
          icon: AnimatedIcons.menu_arrow,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {

    final result1 = subject[query].toString();

    return Center(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
child: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    ListTile(
        leading: Icon(Icons.question_answer),
        title: Text(query, style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        subtitle: Text(result1, style: TextStyle(
            color: Colors.black87
        ),),
          )
  ],
),
),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final searchSug = query.isEmpty? his : subject.keys.where((p) => p.contains(query)).toList();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        itemCount: searchSug.length,

        itemBuilder: (context, index) {
          final searchSugs = searchSug[index];
        return ListTile(
          onTap: (){
            query = searchSugs;
            showResults(context);

          },

          leading: Icon(Icons.question_answer),
          title: RichText(
            text: TextSpan(
           text: searchSug[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: searchSug[index].substring(query.length),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ]
            ),
          ),
        );
  },
      ),
    );
  }


}
