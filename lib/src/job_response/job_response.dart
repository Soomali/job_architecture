part of 'main.dart';

class JobResponse<T> {
  final T _result;
  final String? error;
  const JobResponse({required T result,this.error}):_result = result;
  T get result => _result;
}