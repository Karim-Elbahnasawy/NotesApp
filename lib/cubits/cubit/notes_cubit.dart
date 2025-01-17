import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import '../../constants.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<Notemodel>? notes;

  fetchAllNotes() {
    var notesBox = Hive.box<Notemodel>(kNotesbox);
    notes = notesBox.values.toList();
    emit(NotesSucess());
  }
}
