import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';

class NotesItem extends StatelessWidget {
  NotesItem({super.key,required this.index});
  final notesColor=[
    Colors.amber,
    Colors.cyan, 
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.blueGrey,
    Colors.pinkAccent,
    Colors.tealAccent

  ];
  final int index;
  @override
  Widget build(BuildContext context) {
    final color = notesColor[index % notesColor.length];
    final minHeight = getMinHeight(index);
    return GestureDetector(
      child: Card(
        color: color,
        child: Container(
         constraints: BoxConstraints(
          minHeight: minHeight 
         ), 
         padding: EdgeInsets.all(8),
         child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             
              ],
             )
          ],
         ),
        ),
      ),
    );
  }

  double getMinHeight(int index){
    switch (index%4) {
      case 0:
        return 100;
      case 1:
        return 150;
      case 2:
        return 150;
      case 3:
        return 100;
        
      default:
      return 150;
    }
  }
}