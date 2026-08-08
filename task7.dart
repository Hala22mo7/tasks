
// Task 1 - Car
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}
// Task 2 
class Student {
  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  Student.guest()
      : name = "Guest",
        age = 0,
        grade = 0;

  void showInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
  }
}
// Task 3 -
class BankAccount {
  double _balance = 0;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Invalid balance");
    }
  }

  double get balance {
    return _balance;
  }
}
// Task 4 
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print("Animal Sound");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("Dog: Woof!");
  }
}
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("Cat: Meow!");
  }
}
// Task 5 
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}
// Task 6 
class Book {
  String title;
  String author;

  Book(this.title, this.author);
}
class BorrowedBook extends Book {
  bool _isBorrowed = false;

  BorrowedBook(String title, String author) : super(title, author);

  void borrowBook() {
    if (_isBorrowed) {
      print("This book is already borrowed.");
    } else {
      _isBorrowed = true;
      print("Borrowed successfully.");
    }
  }

  void returnBook() {
    if (!_isBorrowed) {
      print("This book is already available.");
    } else {
      _isBorrowed = false;
      print("Book returned successfully.");
    }
  }

  void getStatus() {
    if (_isBorrowed) {
      print("Current Status: Borrowed");
    } else {
      print("Current Status: Available");
    }
  }

  void showBook() {
    print("Book: $title");
    print("Author: $author");
  }
}

// Main

void main() {

  Car car = Car("Toyota", "Corolla", 2022);
  car.displayInfo();

  
  Student s1 = Student("Anas", 22, 95);
  Student s2 = Student.guest();

  s1.showInfo();
  print("-----------");
  s2.showInfo();


  BankAccount account = BankAccount();

  account.balance = 1000;
  print("Balance: ${account.balance}");

  account.balance = -500;
  print("Balance: ${account.balance}");

  Dog dog = Dog("Max");
  Cat cat = Cat("Kitty");

  dog.makeSound();
  cat.makeSound();


  Employee employee = Employee("Hala", 22, 8000);

  employee.displayInfo();

  BorrowedBook book = BorrowedBook("Flutter Basics", "John");

  book.showBook();
  print("");

  book.borrowBook();
  book.borrowBook();
  book.returnBook();
  book.getStatus();
}