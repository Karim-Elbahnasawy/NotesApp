import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constants.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNodes() async {
    try {
      var notesBox = Hive.box<Notemodel>(kNotesbox);
      List<Notemodel> notes = notesBox.values.toList();
      emit(NotesSucess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
