//! Single Responsiblity
// class Product {
//   String id;
//   String title;
//   double price;

//   Product({required this.id, required this.title, required this.price});
// }

// class ProductManager {
//   void createProduct() {}

//   void deleteProduct() {}
// }

// class CartManager {
//   void saveCart() {}
// }

//! Open Closed

//!Liskov Substitution Principle

abstract class Employee {
  void ishlash();
}

abstract class RealEmployee extends Employee {
  void maoshOlish();
}

class Stajor extends Employee {
  @override
  void ishlash() {}
}

class Ishchi extends RealEmployee {
  @override
  void ishlash() {}
  @override
  void maoshOlish() {}
}

//!Interface Segregation Principle

abstract class Readable {
  void readBook();
}

abstract class Borrowable {
  void borrowBook();
}

abstract class Buyable {
  void buyBook();
}

class BadiiyKitob implements Readable {
  @override
  void readBook() {}
}

class ErtakKitob implements Readable, Borrowable {
  @override
  void readBook() {}
  @override
  void borrowBook() {}
}

class AvtoBiografiya implements Readable, Borrowable, Buyable {
  @override
  void readBook() {}
  @override
  void borrowBook() {}
  @override
  void buyBook() {}
}

//!Dependency Inversion Principle (DIP)

abstract class PaymentManager {
  void tolash();
}

class Naqd implements PaymentManager {
  @override
  void tolash() {
    print("Naqd to'landi");
  }
}

class SberBank implements PaymentManager {
  @override
  void tolash() {
     print("SberBank orqali to'landi");
  }
}

class Click implements PaymentManager {
  @override
  void tolash() {
     print("Click orqali to'landi");
  }
}

class PaymentService {
  PaymentManager paymentManager;

  PaymentService(this.paymentManager);

  void tolash2() {
    paymentManager.tolash();
  }
}
