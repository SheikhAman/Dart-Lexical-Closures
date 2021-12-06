// Objective
// 1. Closures

// Closures :  It is a  special function , within you can mmodify the values of variables present in the parentt scope
// mane parent function r variable r value change kora child function a sei functon ke closures bole

import 'package:flutter/foundation.dart';

void main() {
  // Definition 1:
  // A closure is a function that has access to the parent scope, even after the scope has closed.

  String message = 'Dart is good';

  Function showMessage = () {
    // this function is actually  known as closures, its a special kind of function

    // we are accessing message variable in the parent scope and changing its value
    message = 'Dart is awesome';
    print(message);
  };
  showMessage();

  // Definition  2:
  // A closure is a function object  that  has access to variables in  its lexical scope(parent scope),
  // even when the  function is used outside of  its original scope.

  Function talk = () {
    String msg = 'Hi';
    Function say = () {
      msg = 'Hello';
      print(msg);
    };
    return say; // Function talk will return say Function
  };
  Function speak =
      talk(); // when we call talk Function it will return say Function
  speak(); // calling speak function which is actually talk function  // talk()  // say()  // print(msg)   // 'Hello' // say function is used out side the talk function in the form of talk function
}
