part of 'main.dart';

@freezed
class JobResponse<T> with _$JobResponse<T> {
  factory JobResponse(
      {required String id,
      T? result,
      String? error,
      required JobResponseStatus status}) = _JobResponse;
}
