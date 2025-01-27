import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/notes_item.dart';

class NotesBodyWidget extends StatefulWidget {
  const NotesBodyWidget({super.key});

  @override
  State<NotesBodyWidget> createState() => _NotesBodyWidgetState();
}

class _NotesBodyWidgetState extends State<NotesBodyWidget> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).getAllNotes();
    super.initState();
  }
   @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   BlocProvider.of<NoteCubit>(context).getAllNotes();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBarWidget(title: "Notes", icon: Icons.search),
          Expanded(
            child: BlocBuilder<NoteCubit, NoteState>(
              builder: (context, state) {
                List<NotesModel> notes =
                    BlocProvider.of<NoteCubit>(context).notes!;

                return SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    children: List.generate(
                      notes.length,
                      (index) {
                        return StaggeredGridTile.fit(
                          crossAxisCellCount: 1,
                          child: GestureDetector(
                            onTap: () {},
                            child: NotesItem(
                              index: index,
                              notesModel: notes[index],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
