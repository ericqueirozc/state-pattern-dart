import 'state.dart';

class Context {
  State _state;

  Context(this._state);

  void setState(State state) {
    _state = state;
  }

//This method varies depending on the state
  void methodA() {
    _state.methodA();
  }

//This method varies depending on the state
  void methodB() {
    _state.methodB(this);
  }

//This method DOES`T varies depending on the state
  void methodC() {
    print(
        "This is methodC. methodC has always the same behavior whatever the state may be.");
  }
}
