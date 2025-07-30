import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) {
    emit(AddNoteloading());
    try {
      var notebox = Hive.box(KNoteBox);
      emit(AddNotesuccess());
      notebox.add(note);
    } on Exception catch (e) {
      emit(AddNotefaliure(e.toString()));
    }
  }
}
