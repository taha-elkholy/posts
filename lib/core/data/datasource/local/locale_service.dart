import 'package:injectable/injectable.dart';
import 'package:social_task/features/posts/data/models/post_local_model.dart';
import 'package:social_task/utilities/constants/constants.dart';
import 'package:sqflite/sqflite.dart';

abstract class LocalService {
  Future<void> createDatabase();

  Future<PostLocalModel> insert({required PostLocalModel post});

  Future<List<PostLocalModel>> getData();

  Future<void> removeData({required int id});

  Future<void> closeDatabase();
}

@Singleton(as: LocalService)
class LocalServiceImpl extends LocalService {
  late Database _database;

  @override
  Future<void> createDatabase() async {
    openDatabase(
      Constants.localDatabaseName,
      version: 1,
      onCreate: (database, version) async {
        await database.execute('''
create table ${Constants.tablePosts} ( 
  ${Constants.postLocalId} integer primary key autoincrement, 
  ${Constants.postId} text not null,
  ${Constants.postUserId} text not null,
  ${Constants.imageUrl} text not null,
  ${Constants.userImageUrl} text not null,
  ${Constants.content} text not null,
  ${Constants.likes} text not null,
  ${Constants.isSaved} integer not null)
''');
      },
    ).then((value) => _database = value);
  }

  @override
  Future<PostLocalModel> insert({required PostLocalModel post}) async {
    post.id = await _database.insert(Constants.tablePosts, post.toMap());
    return post;
  }

  @override
  Future<List<PostLocalModel>> getData() async {
    final data =
        await _database.rawQuery('SELECT * FROM ${Constants.tablePosts}');
    List<PostLocalModel> posts =
        data.map((post) => PostLocalModel.fromMap(post)).toList();
    return posts;
  }

  @override
  Future<void> removeData({required int id}) async {
    await _database.rawUpdate(
      'DELETE FROM ${Constants.tablePosts} WHERE ${Constants.postLocalId} = ?',
      [id],
    );
  }

  @override
  Future<void> closeDatabase() async {
    await _database.close();
  }
}
