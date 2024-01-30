//Number 1 Question
int addTwoNumbers(int a, int b) {
  return a + b;
}

void main() {
  // Example usage
  int result = addTwoNumbers(5, 7);
  print("Sum: $result"); // Output: Sum: 12
}

//Number 2 Question
int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}

void main() {
  // Example usage
  int number = 5;
  int factorialResult = calculateFactorial(number);
  print("Factorial of $number: $factorialResult"); // Output: Factorial of 5: 120
}

//Number 3 Question
Create a function that checks if a number is prime
  bool isPrime(int number) {
  if (number <= 1) {
    return false; // 0 and 1 are not prime numbers
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false; // If the number is divisible by any number between 2 and (number/2), it's not prime
    }
  }

  return true; // If no divisors found, the number is prime
}

void main() {
  // Example usage
  int num1 = 7;
  int num2 = 12;

  print("$num1 is prime: ${isPrime(num1)}"); // Output: 7 is prime: true
  print("$num2 is prime: ${isPrime(num2)}"); // Output: 12 is prime: false
}

//Number 4 Question
Implement a function that converts Celsius to Fahrenheit.
  Certainly! You can create a Dart function to convert Celsius to Fahrenheit using the formula: F= 9/5×C+32
  double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

void main() {
  // Example usage
  double celsiusValue = 25.0;
  double fahrenheitResult = celsiusToFahrenheit(celsiusValue);
  print("$celsiusValue Celsius is $fahrenheitResult Fahrenheit");
  // Output: 25.0 Celsius is 77.0 Fahrenheit
}

//Number 5 Question
  String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join();
}

void main() {
  // Example usage
  String originalString = "Hello, World!";
  String reversedResult = reverseString(originalString);
  print("Original: $originalString");
  print("Reversed: $reversedResult");
  // Output: Original: Hello, World!
  //         Reversed: !dlroW ,olleH
}

//Number 6 Question
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method to display person's information
  void displayInfo() {
    print("Name: $name\nAge: $age");
  }
}

void main() {
  // Example usage
  Person person1 = Person("John Doe", 25);
  Person person2 = Person("Jane Smith", 30);

  // Display information for person1
  print("Person 1 Information:");
  person1.displayInfo();

  // Display information for person2
  print("\nPerson 2 Information:");
  person2.displayInfo();
}

//Number 7 Question
class Rectangle {
  double length;
  double width;

  // Constructor
  Rectangle(this.length, this.width);

  // Method to calculate the area
  double calculateArea() {
    return length * width;
  }
}

void main() {
  // Example usage
  Rectangle rectangle1 = Rectangle(5.0, 8.0);
  Rectangle rectangle2 = Rectangle(10.0, 3.5);

  // Calculate and display area for rectangle1
  double area1 = rectangle1.calculateArea();
  print("Area of Rectangle 1: $area1 square units");

  // Calculate and display area for rectangle2
  double area2 = rectangle2.calculateArea();
  print("Area of Rectangle 2: $area2 square units");
}

//Number 8 Question
import 'dart:math';

class Circle {
  double radius;

  // Constructor
  Circle(this.radius);

  // Method to calculate the circumference
  double calculateCircumference() {
    return 2 * pi * radius;
  }
}

void main() {
  // Example usage
  Circle circle1 = Circle(4.0);
  Circle circle2 = Circle(6.5);

  // Calculate and display circumference for circle1
  double circumference1 = circle1.calculateCircumference();
  print("Circumference of Circle 1: $circumference1 units");

  // Calculate and display circumference for circle2
  double circumference2 = circle2.calculateCircumference();
  print("Circumference of Circle 2: $circumference2 units");
}

//Number 9 Question
class BankAccount {
  String accountHolder;
  double balance;

  // Constructor
  BankAccount(this.accountHolder, this.balance);

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit successful. New balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Invalid deposit amount. Please deposit a positive amount.");
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawal successful. New balance: \$${balance.toStringAsFixed(2)}");
    } else if (amount <= 0) {
      print("Invalid withdrawal amount. Please withdraw a positive amount.");
    } else {
      print("Insufficient funds. Cannot withdraw more than the current balance.");
    }
  }

  // Method to check account balance
  void checkBalance() {
    print("Account balance for $accountHolder: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Example usage
  BankAccount myAccount = BankAccount("John Doe", 1000.0);

  // Check initial balance
  myAccount.checkBalance();  // Output: Account balance for John Doe: $1000.00

  // Deposit money
  myAccount.deposit(500.0);  // Output: Deposit successful. New balance: $1500.00

  // Withdraw money
  myAccount.withdraw(200.0);  // Output: Withdrawal successful. New balance: $1300.00

  // Check updated balance
  myAccount.checkBalance();  // Output: Account balance for John Doe: $1300.00
}

//Number 10 Question
class Student {
  String name;
  int age;
  double grade;

  // Constructor
  Student(this.name, this.age, this.grade);

  // Method to determine if the student passed or failed
  String determinePassOrFail() {
    if (grade >= 60.0) {
      return "Pass";
    } else {
      return "Fail";
    }
  }
}

void main() {
  // Example usage
  Student student1 = Student("Alice", 18, 75.5);
  Student student2 = Student("Bob", 20, 45.8);

  // Determine pass/fail for student1
  print("${student1.name} - Age: ${student1.age}, Grade: ${student1.grade}, Result: ${student1.determinePassOrFail()}");

  // Determine pass/fail for student2
  print("${student2.name} - Age: ${student2.age}, Grade: ${student2.grade}, Result: ${student2.determinePassOrFail()}");
}

//Number 11 Question
class Calculator {
  // Method to add two numbers
  double add(double a, double b) {
    return a + b;
  }

  // Method to subtract two numbers
  double subtract(double a, double b) {
    return a - b;
  }

  // Method to multiply two numbers
  double multiply(double a, double b) {
    return a * b;
  }

  // Method to divide two numbers
  double divide(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      print("Cannot divide by zero.");
      return double.infinity; // Return infinity for division by zero
    }
  }
}

void main() {
  // Example usage
  Calculator calculator = Calculator();

  // Perform basic arithmetic operations
  double resultAdd = calculator.add(10.0, 5.0);
  print("Addition result: $resultAdd");

  double resultSubtract = calculator.subtract(10.0, 5.0);
  print("Subtraction result: $resultSubtract");

  double resultMultiply = calculator.multiply(10.0, 5.0);
  print("Multiplication result: $resultMultiply");

  double resultDivide = calculator.divide(10.0, 5.0);
  print("Division result: $resultDivide");
}

//Number 12 Question
class Car {
  bool isRunning = false;
  double fuelLevel = 0.0;

  // Method to start the car
  void start() {
    if (!isRunning) {
      print("Starting the car.");
      isRunning = true;
    } else {
      print("The car is already running.");
    }
  }

  // Method to stop the car
  void stop() {
    if (isRunning) {
      print("Stopping the car.");
      isRunning = false;
    } else {
      print("The car is already stopped.");
    }
  }

  // Method to check the fuel level
  void checkFuelLevel() {
    print("Fuel level: $fuelLevel gallons");
  }
}

void main() {
  // Example usage
  Car myCar = Car();

  // Check initial fuel level
  myCar.checkFuelLevel();  // Output: Fuel level: 0.0 gallons

  // Start the car
  myCar.start();  // Output: Starting the car.

  // Check fuel level after starting
  myCar.checkFuelLevel();  // Output: Fuel level: 0.0 gallons

  // Stop the car
  myCar.stop();  // Output: Stopping the car.

  // Check fuel level after stopping
  myCar.checkFuelLevel();  // Output: Fuel level: 0.0 gallons
}


//Number 13 Question
int findMax(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError("List is empty. Cannot find the maximum element.");
  }

  int max = numbers[0];

  for (int number in numbers) {
    if (number > max) {
      max = number;
    }
  }

  return max;
}

void main() {
  // Example usage
  List<int> numbers = [7, 12, 3, 25, 8, 10];

  try {
    int maxElement = findMax(numbers);
    print("The maximum element in the list is: $maxElement");
  } catch (e) {
    print("Error: $e");
  }
}

//Number 14 Question
class Employee {
  String name;
  double salary;

  // Constructor
  Employee(this.name, this.salary);

  // Method to give a bonus
  void giveBonus(double bonusAmount) {
    if (bonusAmount > 0) {
      salary += bonusAmount;
      print("$name received a bonus of \$${bonusAmount.toStringAsFixed(2)}. New salary: \$${salary.toStringAsFixed(2)}");
    } else {
      print("Invalid bonus amount. Please provide a positive bonus value.");
    }
  }
}

void main() {
  // Example usage
  Employee employee1 = Employee("John Doe", 50000.0);
  Employee employee2 = Employee("Jane Smith", 60000.0);

  // Give a bonus to employee1
  employee1.giveBonus(5000.0);  // Output: John Doe received a bonus of $5000.00. New salary: $55000.00

  // Give a bonus to employee2 with an invalid amount
  employee2.giveBonus(-2000.0);  // Output: Invalid bonus amount. Please provide a positive bonus value.
}

//Number 15 Question
class Triangle {
  double base;
  double height;

  // Constructor
  Triangle(this.base, this.height);

  // Method to calculate the area of the triangle
  double calculateArea() {
    return 0.5 * base * height;
  }
}

// Function to demonstrate the usage
void calculateTriangleArea(double base, double height) {
  Triangle triangle = Triangle(base, height);
  double area = triangle.calculateArea();
  print("Triangle with base $base and height $height has an area of $area square units.");
}

void main() {
  // Example usage using the function
  calculateTriangleArea(8.0, 12.0);  // Output: Triangle with base 8.0 and height 12.0 has an area of 48.0 square units.
}

//Number 16 Question
import 'dart:math';

double findSquareRoot(double number) {
  if (number < 0) {
    print("Cannot find the square root of a negative number.");
    return double.nan; // Return NaN for invalid input
  }
  return sqrt(number);
}

void main() {
  // Example usage
  double inputNumber = 25.0;
  
  double squareRootResult = findSquareRoot(inputNumber);
  
  if (!squareRootResult.isNaN) {
    print("The square root of $inputNumber is: $squareRootResult");
  }
}

//Number 17 Question
List<int> generateFibonacci(int limit) {
  List<int> fibonacciList = [];

  if (limit <= 0) {
    print("Invalid limit. Please provide a positive limit.");
    return fibonacciList;
  }

  int a = 0, b = 1;

  while (a <= limit) {
    fibonacciList.add(a);
    int nextFibonacci = a + b;
    a = b;
    b = nextFibonacci;
  }

  return fibonacciList;
}

void main() {
  // Example usage
  int limit = 50;
  
  List<int> fibonacciNumbers = generateFibonacci(limit);
  
  print("Fibonacci numbers up to $limit: $fibonacciNumbers");
  // Output: Fibonacci numbers up to 50: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
}

//Number 18 Question
bool isLeapYear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true; // Divisible by 400, so it's a leap year
      } else {
        return false; // Divisible by 100 but not by 400, so it's not a leap year
      }
    } else {
      return true; // Divisible by 4 and not by 100, so it's a leap year
    }
  } else {
    return false; // Not divisible by 4, so it's not a leap year
  }
}

void main() {
  // Example usage
  int year1 = 2020;
  int year2 = 2022;

  print("$year1 is a leap year: ${isLeapYear(year1)}"); // Output: 2020 is a leap year: true
  print("$year2 is a leap year: ${isLeapYear(year2)}"); // Output: 2022 is a leap year: false
}

//Number 19 Question
int calculateFactorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calculateFactorial(n - 1);
  }
}

void main() {
  // Example usage
  int number = 5;
  int factorialResult = calculateFactorial(number);
  print("Factorial of $number: $factorialResult"); // Output: Factorial of 5: 120
}

//Number 20 Question
List<int> filterEvenNumbers(List<int> numbers) {
  return numbers.where((number) => number % 2 == 0).toList();
}

void main() {
  // Example usage
  List<int> originalList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  List<int> evenNumbersList = filterEvenNumbers(originalList);
  
  print("Original list: $originalList");
  print("List with even numbers only: $evenNumbersList");
  // Output: Original list: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  //         List with even numbers only: [2, 4, 6, 8, 10]
}
