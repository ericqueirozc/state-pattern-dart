import 'context.dart';
import 'state.dart';

void main(List<String> args) {
  final context = Context(StateA());
  context.methodA();
  context.methodB();
  context.methodA();
  context.methodB();
  context.methodC();
}
