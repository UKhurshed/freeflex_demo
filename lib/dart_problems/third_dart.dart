import 'dart:io';

void main() {
  var flag = true;
  List<num> arrays = [];
  while (flag) {
    stdout.write("Введен в консоль: ");
    var numbers = stdin.readLineSync();
    if (numbers == "exit") {
      flag = false;
    } else {
      //null check
      if (numbers != null) {
        try {
          var myNum = num.parse(numbers);
          arrays.add(myNum);
          stdout.writeln("Длина массива: ${arrays.length}");
        } catch (e) {
          stdout.writeln(
              "Вывод в консоли: Это не число\n Длина массива: ${arrays.length}");
        }
      }
    }
  }
}
