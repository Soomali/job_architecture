part of 'main.dart';

class PaginatedJobResponse<T> extends JobResponse<T> {
  final Map<String, dynamic>? pagintaionParams;
  PaginatedJobResponse(
      {this.pagintaionParams, super.result, super.error, super.status});
}
