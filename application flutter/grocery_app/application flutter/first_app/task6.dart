// =========================
// Task 1
// =========================

class Person {
  String name;
  int age;
  String city;

  Person(this.name, this.age, this.city);

  void printInfo() {
    print("Name: $name");
    print("Age: $age");
    print("City: $city");
  }
}

// =========================
// Task 2 
// =========================

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

// =========================
// Task 3 
// =========================

class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  BankAccount.empty(this.owner) : balance = 0;

  void deposit(double amount) {
    balance += amount;
    print("Balance = $balance");
  }

  void withdraw(double amount) {
    balance -= amount;
    print("Balance = $balance");
  }
}

// =========================
// Task 4 
// =========================

class Student {
  String name;
  List<double> grades;

  Student(this.name, this.grades);

  double average() {
    double sum = 0;

    for (int i = 0; i < grades.length; i++) {
      sum += grades[i];
    }

    return sum / grades.length;
  }

  String status() {
    if (average() >= 60) {
      return "Pass";
    } else {
      return "Fail";
    }
  }
}

// =========================
// Task 5 
// =========================

class Product {
  String name;
  double price;
  bool inStock;

  Product(this.name, this.price, [this.inStock = true]);

  Product.outOfStock(this.name, this.price) : inStock = false;

  @override
  String toString() {
    return "Name: $name, Price: $price, In Stock: $inStock";
  }
}

// =========================
// Main
// =========================

void main() {

  // ---------- Task 1 ----------
  Person p1 = Person("Hala", 22, "Menofia");
  Person p2 = Person("Ali", 20, "Cairo");

  p1.printInfo();
  print("----------------");
  p2.printInfo();

  // ---------- Task 2 ----------

  Rectangle r = Rectangle(5, 10);

  print("Area = ${r.area()}");
  print("Perimeter = ${r.perimeter()}");

  // ---------- Task 3 ----------

  BankAccount account = BankAccount.empty("Hala");

  account.deposit(1000);
  account.withdraw(300);

  // ---------- Task 4 ----------
  
  Student s = Student("Hala", [70, 80, 90]);

  print("Average = ${s.average()}");
  print("Status = ${s.status()}");

  // ---------- Task 5 ----------
  Product p3 = Product("Book", 40);
  Product p4 = Product("Pen", 5);
  Product p5 = Product.outOfStock("Bag", 120);

  print(p3);
  print(p4);
  print(p5);
}