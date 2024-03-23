import 'dart:io';

// Interface definition
abstract class Animal {
  void makeSound();
}

// Base class implementing the interface
class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

// Derived class that overrides a method from the base class
class Cat extends Dog {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Class to demonstrate initialization from a file
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  // Method to initialize data from a file
  void readFromFile(String filename) {
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();
    if (lines.isNotEmpty) {
      name = lines[0];
      age = int.parse(lines[1]);
    }
  }
}

void main() {
  // Creating an instance of Cat
  Cat cat = Cat();
  cat.makeSound(); // Output: Meow!

  // Creating an instance of Person and initializing data from a file
  Person person = Person('', 0);
  person.readFromFile('person_data.txt');
  print('Name: ${person.name}, Age: ${person.age}');

  // Method demonstrating the use of a loop
  print('Counting from 1 to 5:');
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}
