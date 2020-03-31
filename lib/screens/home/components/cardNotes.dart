import 'package:flutter/material.dart';

class CardNotes extends StatelessWidget {
  int id;
  String title;
  String body;
  String date;
  Color tagColor;
  CardNotes({this.id,this.title,this.body,this.date,this.tagColor});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide(color: Color(0xFFC8C8C8))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(radius: 5, backgroundColor: tagColor,),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(title, maxLines: 4, style: TextStyle(color: Color(0xFF616161), fontSize: 18, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(body, maxLines: 10, overflow: TextOverflow.ellipsis, style: TextStyle(color: Color(0xFF767676), fontSize: 12),),
            )
          ],
        ),
      ),
    );
  }
}