part of 'main.dart';

abstract class JobHandler {
  String getError(Exception exception);
  Iterable<JobResponse<V>> handleJob<T, V>(
      JobCompleter<T, V> jobCompleter) sync* {
    final response = JobResponse<V>.start(
      jobCompleter.job.id,
    );
    yield response;
    try {
      V result = jobCompleter.completer.call(jobCompleter.job.payload);
      yield response.copyWith(result: result);
    } on Exception catch (e) {
      yield response.copyWith(
          status: JobResponseStatus.finished, error: getError(e));
    }
  }

  Stream<JobResponse<V>> handleAsyncJob<T, V>(
      JobCompleter<T, Future<V>> jobCompleter) async* {
    final response = JobResponse<V>.start(
      jobCompleter.job.id,
    );
    yield response;
    try {
      V result = await jobCompleter.completer.call(jobCompleter.job.payload);
      yield response.copyWith(result: result);
    } on Exception catch (e) {
      yield response.copyWith(
          status: JobResponseStatus.finished, error: getError(e));
    }
  }
}
