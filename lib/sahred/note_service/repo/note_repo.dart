import 'package:note/sahred/note_service/model/note_model.dart';
import 'package:note/sahred/note_service/repo/note_data_provider.dart';

class NoteRepo {
  final NoteDataProvider noteDataProvider;

  NoteRepo(this.noteDataProvider);

  Future<int> create(NoteModel note) async {
    return noteDataProvider.create(note);
  }

  Future<int> update(NoteModel note) async {
    return noteDataProvider.update(note);
  }

  Future<int> delete(NoteModel note) async {
    return noteDataProvider.delete(note);
  }

  Future<List<NoteModel>> fetch([int limit = 15]) async {
    return await noteDataProvider.fetch(limit);
  }
}
