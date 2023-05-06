part of 'main.dart';

class JobResponse<T> {
  final T? result;
  final String? error;
  final JobResponseStatus status;
  const JobResponse(
      {this.result, this.error, this.status = JobResponseStatus.ongoing});
}
