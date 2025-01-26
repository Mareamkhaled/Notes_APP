import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';

class NotesBodyWidget extends StatefulWidget {
  const NotesBodyWidget({super.key});

  @override
  State<NotesBodyWidget> createState() => _NotesBodyWidgetState();
}

class _NotesBodyWidgetState extends State<NotesBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBarWidget(title: "Notes", icon: Icons.search),
        Expanded(child: SingleChildScrollView(
          
        ))
      ],
    ));
  }
}