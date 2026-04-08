void main() {
  final regex = RegExp(r'(a+)*b$');
  final stopwatch = Stopwatch()..start();
  final result = regex.hasMatch('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba');
  stopwatch.stop();
  print('result: $result');
  print('elapsed: ${stopwatch.elapsed}');
}
