import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notes_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
 List<NotesModel>? notes;

  getAllNotes()async{
    try {
      var noteBox = Hive.box<NotesModel>("notes box");
      notes = noteBox.values.toList();
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailed(e.toString()));
    }
  }
}
