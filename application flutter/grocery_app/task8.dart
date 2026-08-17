// =========================
// Task 1 - BankAccount
// =========================

class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient balance");
    }
  }

  double get balance {
    return _balance;
  }
}

// =========================
// Task 2 - Student
// =========================

class Student {
  String _name;
  double _grade;

  Student(this._name, this._grade);

  String get name {
    return _name;
  }

  double get grade {
    return _grade;
  }

  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print("Invalid grade");
    }
  }
}

// =========================
// Task 3 - Vehicle and Car
// =========================

class Vehicle {
  String brand;
  double speed;

  Vehicle(this.brand, this.speed);

  void describe() {
    print("Brand: $brand");
    print("Speed: $speed");
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, double speed, this.doors)
      : super(brand, speed);

  @override
  void describe() {
    print("Brand: $brand");
    print("Speed: $speed");
    print("Doors: $doors");
  }
}

// =========================
// Task 4 - Animal and Dog
// =========================

class Animal {
  String name;

  Animal(this.name);
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);
}

// =========================
// Task 5 - Shape
// =========================

abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// =========================
// Task 6 - Employee
// =========================

abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work();

  void introduce() {
    print("My name is $name");
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print("$name is writing code.");
  }
}

// =========================
// Task 7 - Flyable and Swimmable
// =========================

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is flying.");
  }

  @override
  void swim() {
    print("Duck is swimming.");
  }
}

// =========================
// Task 8 - Drawable
// =========================

abstract class Drawable {
  void draw();

  String getColor();
}

class Square implements Drawable {
  @override
  void draw() {
    print("Drawing a square.");
  }

  @override
  String getColor() {
    return "Blue";
  }
}

class Triangle implements Drawable {
  @override
  void draw() {
    print("Drawing a triangle.");
  }

  @override
  String getColor() {
    return "Red";
  }
}

// =========================
// Task 9 - Counter
// =========================

class Counter {
  int _count = 0;

  void increment() {
    _count++;
  }

  void decrement() {
    if (_count > 0) {
      _count--;
    }
  }

  void reset() {
    _count = 0;
  }

  int get count {
    return _count;
  }
}

// =========================
// Main
// =========================

void main() {
  // Task 1
  BankAccount account = BankAccount();

  account.deposit(1000);
  print("Balance: ${account.balance}");

  account.withdraw(300);
  print("Balance: ${account.balance}");

  account.withdraw(1000);
  print("Balance: ${account.balance}");


  // Task 2
  Student student = Student("Hala", 90);

  print("Name: ${student.name}");
  print("Grade: ${student.grade}");

  student.grade = 95;
  print("New Grade: ${student.grade}");

  student.grade = 150;


  // Task 3
  Car car = Car("Toyota", 180, 4);

  car.describe();


  // Task 4
  Dog dog = Dog("Max", "German Shepherd");

  print("Dog Name: ${dog.name}");
  print("Breed: ${dog.breed}");


  // Task 5
  Rectangle rectangle = Rectangle(5, 10);
  Circle circle = Circle(5);

  print("Rectangle Area: ${rectangle.area()}");
  print("Circle Area: ${circle.area()}");


  // Task 6
  Developer developer = Developer("Hala", 8000);

  developer.introduce();
  developer.work();


  // Task 7
Duck duck =Duck();
  duck.fly();
  duck.swim();


  // Task 8
  Square square = Square();
  Triangle triangle = Triangle();

  square.draw();
  print("Square Color: ${square.getColor()}");

  triangle.draw();
  print("Triangle Color: ${triangle.getColor()}");


  // Task 9
  Counter counter = Counter();

  print("Count: ${counter.count}");

  counter.increment();
  counter.increment();
  counter.increment();

  print("Count after increment: ${counter.count}");

  counter.decrement();

  print("Count after decrement: ${counter.count}");

  counter.reset();

  print("Count after reset: ${counter.count}");

  counter.decrement();

  print("Count after decrement: ${counter.count}");
}