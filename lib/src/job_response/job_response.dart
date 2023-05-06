part of 'main.dart';

class JobResponse<T> {
  final T? result;
  final String? id;
  final String? error;
  final JobResponseStatus status;
  const JobResponse(
      {this.id,
      this.result,
      this.error,
      this.status = JobResponseStatus.ongoing});
  @override
  bool operator ==(Object? other) {
    return other is JobResponse<T> && other.id == id;
  }
}
