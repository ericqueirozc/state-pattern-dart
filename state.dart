import 'context.dart';

abstract class State {
  void methodA();
  void methodB(Context context);
}

class StateA implements State {
  StateA();

  @override
  void methodA() {
    print("StateA implementation of methodA");
  }

  @override
  void methodB(Context context) {
    print("This method change the context state, from StateA to StateB");
    context.setState(StateB());
  }
}

class StateB implements State {
  StateB();

  @override
  void methodA() {
    print("StateB implementation of methodB");
  }

  @override
  void methodB(Context context) {
    print("This method change the context state, from StateB to StateA");
    context.setState(StateA());
  }
}
