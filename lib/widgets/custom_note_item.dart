import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import '../views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final Notemodel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const EditNoteView();
            }),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  color: Colors.black,
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
