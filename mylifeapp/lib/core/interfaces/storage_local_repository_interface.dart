import 'package:result_dart/result_dart.dart';

abstract class StorageLocalRepository<T> {
  Future<Result<Object>> save(T dados);
  Future<Result<List<Object>>> fetchAll();
  Future<Result<Object>> fetchById(String id);
  Future<Result<Object>> update(T models);
  Future<Result<Object>> delete(String id);
}
