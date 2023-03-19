import 'package:dart_application_1/task1.dart' as task1;
import 'package:dart_application_1/task2.dart' as task2;
import 'package:dart_application_1/task3.dart' as task3;
import 'package:dart_application_1/task4.dart' as task4;
import 'package:dart_application_1/task5.dart' as task5;
import 'package:dart_application_1/task6.dart' as task6;
import 'package:dart_application_1/task7.dart' as task7;
import 'package:dart_application_1/task8.dart' as task8;



void main(List<String> arguments) {
  print("-----Task1--------");
  print(task1.gcd(6, 36));
  print(task1.lcm(6, 36));
  print("\n");

  print("-----Task2--------");
  print(task2.decToBin(5));
  print(task2.binToDec('10011110'));
  print("\n");

  print("-----Task3--------");
  print(task3.values("23 Hello 5"));
  print("\n");

  print("-----Task4--------");
  print(task4.occurence(["hello", "hi", "hello", "one", "two", "two", "three"]));
  print("\n");

  print("-----Task5--------");
  print(task5.occurence('one two three cat dog'));
  print("\n");

  print("-----Task6--------");
  task6.runner();
  print("\n");

  print("-----Task7--------");
  task7.runner();
  print("\n");

  print("-----Task8--------");
  task8.runner();
  print("\n");

}
