part of "main.dart";

abstract class Job<T> {
  final String id;
  final T payload;
  Job({required this.id, required this.payload});
  @override
  bool operator ==(Object? other) {
    return other is Job<T> && other.id == id;
  }
}
