import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_notes_form_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: SingleChildScrollView(
          child: AddNotesFormField(),
        ),
      ),
    );
  }
}
