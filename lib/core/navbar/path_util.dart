import 'dart:ui' as ui;

/// Returns the subset of the input path from start to end
/// `start` and `end` are normalized in the range (0.0, 1.0)
ui.Path extractPartialPath(ui.Path path, double start, double end) {
  assert(0.0 <= start && start <= 1.0);
  assert(0.0 <= end && end <= 1.0);
  assert(start < end);
  final result = ui.Path();
  final metrics = path.computeMetrics().toList();
  var totalLength = 0.0;
  for (final m in metrics) {
    totalLength += m.length;
  }
  final startPos = start * totalLength;
  final endPos = end * totalLength;
  var l = 0.0;
  for (final m in metrics) {
    final localStartPos = (startPos - l).clamp(0.0, m.length);
    final localEndPos = (endPos - l).clamp(0.0, m.length);

    if (localStartPos < localEndPos) {
      result.addPath(
          m.extractPath(localStartPos.toDouble(), localEndPos.toDouble()),
          ui.Offset.zero);
    }
    l += m.length;
  }

  return result;
}
