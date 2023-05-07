part of 'main.dart';

class ChainedJob {
  List<JobCompleter> _chain = [];
  ChainedJob();
  void add(JobCompleter jobCompleter) {
    _chain.add(jobCompleter);
  }

  JobCompleter? getNext() {
    if (_chain.isEmpty) return null;
    return _chain.removeAt(0);
  }
}
