import 'dart:math';

void main() {
  var random = Random();
  List<int> arrays = [];

  for (var i = 0; i < 9; i++) {
    arrays.add(random.nextInt(99) + 1);
  }

  print("Random array: $arrays");

  List<int> evenNumbers = [];

  for (var i = 0; i < arrays.length; i++) {
    if (arrays[i] % 2 == 0) {
      evenNumbers.add(arrays[i]);
    }
  }

  print("Even numbers of array: $evenNumbers");
}
