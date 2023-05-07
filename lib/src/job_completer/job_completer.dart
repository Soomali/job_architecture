part of 'main.dart';

class JobCompleter<T, V> {
  final Job<T> job;
  final V Function(T) completer;
  JobCompleter(this.job, this.completer);
}
