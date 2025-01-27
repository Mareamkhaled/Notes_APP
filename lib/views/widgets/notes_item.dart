import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
class NotesItem extends StatelessWidget {
  NotesItem({super.key,required this.index, required this.notesModel});
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
  final NotesModel notesModel;
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
               Text(notesModel.title,style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
               ),),
               SizedBox(height: 4,),
               Text(notesModel.subtitle,style: TextStyle(
                fontSize: 15,
               ),),
               SizedBox(height: 12,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(notesModel.date,style: TextStyle(
                    color: Colors.black,
                    fontSize: 15
                  ),),
                  IconButton(onPressed: () {
                     notesModel.delete();
                     BlocProvider.of<NoteCubit>(context).getAllNotes();
                  },
                   icon:Icon(FontAwesomeIcons.trash) )
                ],
               )
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