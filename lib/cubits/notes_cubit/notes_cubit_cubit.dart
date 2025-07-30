import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constant/constant.dart';
import 'package:note_app/model/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchallNotes() {
    emit(NotesCubitloading());
    try {
      var notebox = Hive.box<NoteModel>(KNoteBox);

      emit(NotesCubitsuccess(notebox.values.toList()));
    } on Exception catch (e) {
      emit(NotesCubitfailure(e.toString()));
    }
  }
}
