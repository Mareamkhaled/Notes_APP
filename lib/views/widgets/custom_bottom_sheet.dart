import 'package:flutter/material.dart';
import 'package:notes_app/cubit/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubit/note_cubit/note_cubit.dart';
import 'package:notes_app/views/widgets/add_notes_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesLoading) {
           BlocProvider.of<NoteCubit>(context).getAllNotes();
           Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading? true:false,
            child: Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: SingleChildScrollView(
                child: AddNotesFormField(),
              ),
            ),
          );
        },
      ),
    );
  }
}
