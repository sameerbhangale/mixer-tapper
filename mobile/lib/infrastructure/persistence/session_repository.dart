import '../../domain/entities/loop_pattern.dart';

abstract class SessionRepository {
  Future<void> savePattern(String name, LoopPattern pattern);
  Future<List<String>> listPatternNames();
}
