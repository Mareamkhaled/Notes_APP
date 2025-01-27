import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/add_notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/notes_model.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesFormField extends StatefulWidget {
  const AddNotesFormField({super.key});

  @override
  State<AddNotesFormField> createState() => _AddNotesFormFieldState();
}

class _AddNotesFormFieldState extends State<AddNotesFormField> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextField(
                hintText: "Title",
                maxLine: 1,
                onSaved: (val) {
                  title = val;
                },
              ),
            ),
              SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CustomTextField(
                hintText: "Content",
                maxLine: 5,
                onSaved: (val) {
                  subTitle = val;
                },
              ),
            ),
            SizedBox(height: 20,),
            BlocBuilder<AddNotesCubit, AddNotesState>(
              builder: (context, state) {
                return CustomBottom(
                  isLoading: state is AddNotesLoading? true:false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      DateTime now = DateTime.now();
                      String formattedDate = DateFormat('M/d/yyyy').format(now);

                      var noteModel = NotesModel(title: title!, subtitle: subTitle!, date: formattedDate.toString());
                      BlocProvider.of<AddNotesCubit>(context).addNotes(noteModel);
                    }
                    else{
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {
                          
                        });
                    }
                  },
                );
              },
            ),
            SizedBox(height: 20,),
            // Padding(padding: EdgeInsets.all(8),child: CustomBottom(isLoading: ),)
          ],
        ));
  }
}
