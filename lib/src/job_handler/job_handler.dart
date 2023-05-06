part of 'main.dart';

abstract class JobHandler {
  String getError(Exception exception);
  Iterable<JobResponse<V>> handleJob<T, V>(
      Job<T> job, V Function(T) function) sync* {
    yield JobResponse(id: job.id, status: JobResponseStatus.ongoing);
    try {
      V result = function.call(job.payload);
      yield JobResponse(
          id: job.id, status: JobResponseStatus.finished, result: result);
    } on Exception catch (e) {
      yield JobResponse(
          id: job.id, status: JobResponseStatus.finished, error: getError(e));
    }
  }

  Stream<JobResponse<V>> handleAsyncJob<T, V>(
      Job<T> job, Future<V> Function(T) function) async* {
    yield JobResponse(status: JobResponseStatus.ongoing);
    try {
      V result = await function.call(job.payload);
      yield JobResponse(status: JobResponseStatus.finished, result: result);
    } on Exception catch (e) {
      yield JobResponse(status: JobResponseStatus.finished, error: getError(e));
    }
  }
}
