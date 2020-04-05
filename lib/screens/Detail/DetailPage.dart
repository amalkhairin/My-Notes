import 'package:flutter/material.dart';
import 'package:my_notes/screens/editNotes/editNotes.dart';
import 'package:my_notes/screens/home/components/cardNotes.dart';

class DetailPage extends StatefulWidget {
  final CardNotes child;
  DetailPage({this.child});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.grey[700],),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.edit, color: Colors.grey[700],),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditNotes(child: widget.child,),)
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.grey[700],),
              onPressed: (){},
            ),
          ],
        ),

        body: _detailBuilder(widget.child),
      )),
    );
  }

  _detailBuilder(CardNotes note){
    return ListView(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(radius: 10, backgroundColor: note.tagColor,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(note.title, maxLines: 3, style: TextStyle(color: Colors.grey[700], fontSize: 24, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16, top: 8),
              child: Text(note.date, style: TextStyle(color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 24,right: 16,bottom: 16),
              child: Text(note.body, maxLines: 100, style: TextStyle(color: Colors.grey[700],),),
            )
            ],
        )
      ],
    );
  }
}