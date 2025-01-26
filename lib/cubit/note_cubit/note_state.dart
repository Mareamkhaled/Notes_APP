part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}
final class NotesLoading extends NoteState {}
final class NotesSuccess extends NoteState {}
final class NotesFailed extends NoteState {
  final String errorMsg;
  NotesFailed(this.errorMsg);
}
