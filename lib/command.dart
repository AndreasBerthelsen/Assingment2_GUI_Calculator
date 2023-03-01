import 'dart:io';


abstract class Command{
  execute(stack){}
}


class Addition extends Command{
  @override
  execute(stack) {
    if (stack.length >= 1){
      var a = num.parse(stack.removeLast());
      var b = num.parse(stack.removeLast());
      var c = a + b;
      stack.add("$c");
    } else {
      throw Exception('Din stack skal indeholde mere end et tal');
    }
  }
}

class Subtraction extends Command{
  @override
  execute(stack) {
    if (stack.length >= 1){
      var a = num.parse(stack.removeLast());
      var b = num.parse(stack.removeLast());
      var c = a - b;
      stack.add("$c");
    } else {
      throw Exception('Din stack skal indeholde mere end et tal');
    }
  }
}

class Multiply extends Command{
  @override
  execute(stack) {
    if (stack.length >= 1){
      var a = num.parse(stack.removeLast());
      var b = num.parse(stack.removeLast());
      var c = a * b;
      stack.add("$c");
    } else {
      throw Exception('Din stack skal indeholde mere end et tal');
    }
  }
}

class Divide extends Command{
  @override
  execute(stack) {
    if (stack.length >= 1){
      var a = num.parse(stack.removeLast());
      var b = num.parse(stack.removeLast());
      var c = a / b;
      stack.add("$c");
    } else {
      throw Exception('Din stack skal indeholde mere end et tal');
    }
  }
}



