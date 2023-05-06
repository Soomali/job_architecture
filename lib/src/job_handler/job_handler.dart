part of 'main.dart';

abstract class JobHandler {
  String getError(Exception exception);
  Iterable<JobResponse<V>> handleJob<T, V>(
      Job<T> job, V Function(T) function) sync* {
    final response = JobResponse<V>.start(
      job.id,
    );
    yield response;
    try {
      V result = function.call(job.payload);
      yield response.copyWith(result: result);
    } on Exception catch (e) {
      yield response.copyWith(
          status: JobResponseStatus.finished, error: getError(e));
    }
  }

  Stream<JobResponse<V>> handleAsyncJob<T, V>(
      Job<T> job, Future<V> Function(T) function) async* {
    final response = JobResponse<V>.start(
      job.id,
    );
    yield response;
    try {
      V result = await function.call(job.payload);
      yield response.copyWith(result: result);
    } on Exception catch (e) {
      yield response.copyWith(
          status: JobResponseStatus.finished, error: getError(e));
    }
  }
}
