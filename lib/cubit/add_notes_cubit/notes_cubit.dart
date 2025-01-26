import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/notes_model.dart';

part 'notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());


  addNotes(NotesModel notesModel)async{
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NotesModel>("notes box");
      await notesBox.add(notesModel);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailed(e.toString()));
    }
  }
}
