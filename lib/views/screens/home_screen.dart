import 'package:flutter/material.dart';
import 'package:notes_app/constants/my_colors.dart';
import 'package:notes_app/views/widgets/notes_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: MyColors.myWhite,

      // appBar: AppBar(
      //   title: Text("Notes"),
      // ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.myBink,
        elevation: 0,
        onPressed: () {
        
      },child: Icon(Icons.add),),

      body: NotesBodyWidget(),
    );
  }
}