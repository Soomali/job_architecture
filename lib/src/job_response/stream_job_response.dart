part of 'main.dart';

class StreamJobResponse<T> extends JobResponse<Stream<T>> {
  final StreamController<T?> _controller = StreamController<T?>();
  StreamJobResponse({super.error, T? result, super.status}) {
    _controller.add(result);
  }
  void update(T value) {
    _controller.add(value);
  }
}
