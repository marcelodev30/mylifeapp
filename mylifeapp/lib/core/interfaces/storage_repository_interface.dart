import 'package:result_dart/result_dart.dart';

abstract class RepositoryStorage<T extends Object> {
  Future<Result<T>> save(T dados);
  Future<Result<List<T>>> fetchAll();
  Future<Result<T>> fetchById(String id);
  Future<Result<T>> update(T models);
  Future<Result<T>> delete(String id);
}
