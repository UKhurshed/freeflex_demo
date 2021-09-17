import 'dart:io';

void main() {
  while (true) {
    stdout.write("Введен в консоль: ");
    var numbers = stdin.readLineSync();
    //null check
    if (numbers != null) {
      try {
        var myNum = num.parse(numbers);
        //int
        if (myNum is int) {
          stdout.writeln("Вывод в консоль: $myNum");
        }
        if (myNum is double) {
          stdout.writeln("Вывод в консоль: $myNum");
        }
      } catch (e) {
        stdout.writeln("Вывод в консоли: Это не число");
      }
    }
  }
}
