part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSucess extends NotesState {
  final List<Notemodel> notes;

  NotesSucess(this.notes);
}

class NotesFailure extends NotesState {
  final String errMessage;

  NotesFailure(this.errMessage);
}
