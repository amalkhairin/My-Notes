import 'package:flutter/material.dart';

import 'components/gridCardList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.grey[700],),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey[700],),
            onPressed: (){},
          )
        ],
      ),

      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("My Notes", style: TextStyle(color: Colors.grey[700], fontSize: 36, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 24),
            child: Text("All Notes",style: TextStyle(color: Colors.grey, fontSize: 14),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16, right: 16, top: 16, bottom: 16),
            child: GridCardList(),
          ),
        ],
      ),
    );
  }
}