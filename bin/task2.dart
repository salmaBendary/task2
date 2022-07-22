import 'package:task2/task2.dart' as task2;
import 'dart:io';

void main(List<String> arguments) {
  print(calcString("cabbage"));
  print(oddEven());
}

oddEven() {
  var x = true;
  int num;
  var data;
  //arrO = array of odd numbers
  List<int> arrO = [];
  //arrE = array of even numbers
  List<int> arrE = [];
  while (x) {
    print("Enter your input :");
    data = stdin.readLineSync();
    switch (data) {
      case "exit":
        x = false;
        break;
      default:
        num = int.parse(data);
        if (num % 2 == 0) {
          arrE.add(num);
        } else if (num % 2 != 0) {
          arrO.add(num);
        } else {
          print("invalid input");
          num = 0;
        }
    }
  }
  print(arrO);
  print(arrE);
}

int calcString(name) {
  int count = 0;
  var input1 = name.toLowerCase();
  List arr = input1.split("");
  arr.forEach((element) {
    if (element == 'a' ||
        element == 'e' ||
        element == 'i' ||
        element == 'o' ||
        element == 'u' ||
        element == 'l' ||
        element == 'n' ||
        element == 'r' ||
        element == 's' ||
        element == 't') {
      count++;
    } else if (element == 'd' || element == 'g') {
      count += 2;
    } else if (element == 'b' ||
        element == 'c' ||
        element == 'm' ||
        element == 'p') {
      count += 3;
    } else if (element == 'f' ||
        element == 'h' ||
        element == 'v' ||
        element == 'w' ||
        element == 'y') {
      count += 4;
    } else if (element == 'k') {
      count += 5;
    } else if (element == 'j' || element == 'x') {
      count += 8;
    } else if (element == 'q' || element == 'z') {
      count += 10;
    }
  });

  return count;
}
