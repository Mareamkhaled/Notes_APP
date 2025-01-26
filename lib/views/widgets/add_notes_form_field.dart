import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNotesFormField extends StatefulWidget {
  const AddNotesFormField({super.key});

  @override
  State<AddNotesFormField> createState() => _AddNotesFormFieldState();
}

class _AddNotesFormFieldState extends State<AddNotesFormField> {
  final GlobalKey<FormState> formKey = GlobalKey();
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
            CustomBottom(),
            SizedBox(height: 20,),
            // Padding(padding: EdgeInsets.all(8),child: CustomBottom(isLoading: ),)
          ],
        ));
  }
}
