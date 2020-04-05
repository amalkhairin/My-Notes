import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_notes/screens/Detail/DetailPage.dart';
import 'package:my_notes/screens/home/components/cardNotes.dart';

class GridCardList extends StatefulWidget {
  @override
  _GridCardListState createState() => _GridCardListState();
}

class _GridCardListState extends State<GridCardList> {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      shrinkWrap: true,
      itemCount: notes.length,
      physics: ScrollPhysics(),
      itemBuilder: (BuildContext context, index){
        return InkWell(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context)=>DetailPage(child: notes[index],))
            );
          },
          child: notes[index],
        );
      },
      staggeredTileBuilder: (index) => StaggeredTile.fit(2),
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
    );
  }

  List<CardNotes> notes = [
    CardNotes(
      id: 1,
      title: "Ini Title",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tortor non vel risus. Ac metus pellentesque at scelerisque tellus eu eu quis neque. Tempus, nec etiam tempus pellentesque vitae ullamcorper lorem sed quam. Vel neque tellus interdum quam phasellus. Sit maecenas vitae sapien eleifend. Nisl, fames sit in et non velit, vitae. Placerat pulvinar etiam mus nunc habitant sapien eros. Pellentesque eget praesent cras elit arcu feugiat tortor auctor. Tellus vel diam consectetur luctus enim pellentesque ante nunc rutrum. Nibh quam vitae blandit lacus lorem viverra blandit. Id mi dis lacus, mauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.red,
    ),
    CardNotes(
      id: 2,
      title: "Ini Title",
      body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      date: "27/03/2020",
      tagColor: Colors.yellow,
    ),
    CardNotes(
      id: 3,
      title: "Ini Title",
      body: "Lorem ipsum dolorus. Ac metus pellentesque at scelerisque tellus eu eu quis neque. Tempus, nec etiam tempus pellentesque vitae ullamcorper lorem sed quam. Vel neque tellus interdum quam phasellus. Sit maecenas vitae sapien eleifend. Nisl, fames sit in et non velit, vitae. Placerat pulvinar etiam mus nunc habitant sapien eros. Pellentesque eget praesent cras elit arcu feugiat tortor auctor. Tellus vel diam consectetur luctus enim pellentesque ante nunc rutrum. Nibh quam vitae blandit lacus lorem viverra blandit. Id mi dis lacus, mauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.blue,
    ),
    CardNotes(
      id: 4,
      title: "Ini Title",
      body: "Lorem ipsum dolor sit amauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.purple,
    ),
    CardNotes(
      id: 5,
      title: "Ini Title",
      body: "Lorem ippellentesque at scelerisque tellus eu eu quis neque. Tempus, nec etiam tempus pellentesque vitae ullamcorper lorem sed quam. Vel neque tellus interdum quam phasellus. Sit maecenas vitae sapien eleifend. Nisl, fames sit in et non velit, vitae. Placerat pulvinar etiam mus nunc habitant sapien eros. Pellentesque eget praesent cras elit arcu feugiat tortor auctor. Tellus vel diam consectetur luctus enim pellentesque ante nunc rutrum. Nibh quam vitae blandit lacus lorem viverra blandit. Id mi dis lacus, mauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.orange,
    ),
    CardNotes(
      id: 6,
      title: "Ini Title",
      body: "Lorem ipsum dolorntesque at scelerisque tellus eu eu quis neque. Tempus, nec etiam tempus pellentesque vitae ullamcorper lorem sed quam. Vel neque tellus interdum quam phasellus. Sit maecenas vitae sapien eleifend. Nisl, fames sit in et non velit, vitae. Placerat pulvinar etiam mus nunc habitant sapien eros. Pellentesque eget praesent cras elit arcu feugiat tortor auctor. Tellus vel diam consectetur luctus enim pellentesque ante nunc rutrum. Nibh quam vitae blandit lacus lorem viverra blandit. Id mi dis lacus, mauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.green,
    ),
    CardNotes(
      id: 7,
      title: "Ini Title",
      body: "Lorem ipsum dolorus. Ac metus pellentesque at scelerisque tellus eu eu quis neque. Tempus, nec etiam tempus pellentesque vitae ullamcorper lorem sed quam. Vel neque tellus interdum quam phasellus. Sit maecenas vitae sapien eleifend. Nisl, fames sit in et non velit, vitae. Placerat pulvinar etiam mus nunc habitant sapien eros. Pellentesque eget praesent cras elit arcu feugiat tortor auctor. Tellus vel diam consectetur luctus enim pellentesque ante nunc rutrum. Nibh quam vitae blandit lacus lorem viverra blandit. Id mi dis lacus, mauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.blue,
    ),
    CardNotes(
      id: 8,
      title: "Ini Title",
      body: "Lorem ipsum dolor sit amauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.purple,
    ),
    CardNotes(
      id: 9,
      title: "Ini Title",
      body: "Lorem ipsum dolor sit amauris massa et ultrices.",
      date: "27/03/2020",
      tagColor: Colors.purple,
    ),
  ];
}