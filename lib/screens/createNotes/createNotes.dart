import 'package:flutter/material.dart';
import 'package:my_notes/screens/createNotes/components/colorList.dart';

class CreateNotes extends StatefulWidget {
  @override
  _CreateNotesState createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {

  Color selectedColor;

  @override
  void initState() {
    selectedColor = Colors.white;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectedColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.grey[700],),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text("Save", style: TextStyle(color:Colors.grey[700]),),
            onPressed: (){},
          )
        ],
      ),
      body: _bodyBuilder(),
    );
  }

  _bodyBuilder(){
    return ListView(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listColor.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      shape: BoxShape.circle
                    ),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: listColor[index].color,
                    ),
                  ),
                  onTap: (){
                    setState(() {
                      selectedColor = listColor[index].color;
                    });
                  },
                ),
              );
            },
          ),
        ),
        ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  maxLines: null,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Title...',
                    border: OutlineInputBorder(borderSide: BorderSide.none)
                  ),
                ),
                TextFormField(
                  maxLines: null,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Write here...',
                    border: OutlineInputBorder(borderSide: BorderSide.none)
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  List<ColorList> listColor = [
    ColorList(color: Colors.white),
    ColorList(color: Colors.red),
    ColorList(color: Colors.orange),
    ColorList(color: Colors.purple),
    ColorList(color: Colors.blue),
    ColorList(color: Colors.yellow),
    ColorList(color: Colors.green),
    ColorList(color: Colors.cyan),
  ];
}