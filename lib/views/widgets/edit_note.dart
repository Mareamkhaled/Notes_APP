import 'package:flutter/material.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.notesModel});
   final NotesModel notesModel;
  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [ 
        CustomAppBarWidget(
          onPressed: () {
            widget.notesModel.title = title ?? widget.notesModel.title;
            widget.notesModel.subtitle = content ?? widget.notesModel.subtitle;
            widget.notesModel.save();
            
          },
          title: "Edit Note", icon: Icons.check),
        
      ],),
    );
  }
}