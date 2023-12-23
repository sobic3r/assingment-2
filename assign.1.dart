void main() {
  //   Q.1: Create two integer variables length and breadth and assign
//   values then check if they are square values or rectangle values.
// ie: if both values are equal then it's square otherwise rectangle.

  int square = 45;
  int rectangle = 48;

  if (square == rectangle)
    print("it's Square");
  else {
    print("it's Rectangle");

//   // Q.2: Take two variables and store age then using if/else condition
// //   determine oldest and youngest among them.

    int enan = 30;
    int saboor = 29;

    if (enan > saboor)
      print("Enan is oldest");
    else if (enan == saboor)
      print("both are of same age");
    else {
      print("Saboor is youngest");
    }

//    Q.3: A student will not be allowed to sit in exam if his/her
//  attendence is less than 75%. Create integer variables and assign value:
// Number of classes held = 16,
// Number of classes attended = 10,
// and print percentage of class attended.
// Is student is allowed to sit in exam or not?

    int nclassheld = 16, nclassatt = 10;
    double percentage = nclassatt / nclassheld * 100;

    print("Pecentage of attendance is $percentage%");

    if (percentage < 75)
      print("Student is not allowed to sit in exam");
    else if (percentage > 75) print("student is allowed to sidt in Exam");

//   Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
// If a year is divisible by 4 then it is leap year but if the year is century year like
// 2000, 1900, 2100 then it must be divisible by 400.
// i.e: Use % ( modulus ) operator.

    int year = 1600;

    bool isLeap = (year % 4 == 0 && year % 100 != 0) ||
        (year % 4 == 0 && year % 100 == 0 && year % 400 == 0);
    if (isLeap)
      print("$year is a leap year");
    else {
      print("$year is not a leap year");
    }

    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          print("$year is a leap year");
        } else {
          ("$year is not a leap year");
        }
      } else {
        ("$year is a leap year");
      }
    } else {
      ("$year is not a leap year");
    }

// Q.5  Write a program to read temperature in centigrade and display a suitable message
// according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot

    num temp = 42;
    if (temp <= 0)
      print(" freezing weather ");
    else if (temp > 0 && temp <= 10)
      print("very cold weather");
    else if (temp > 10 && temp <= 20)
      print("cold weather");
    else if (temp > 20 && temp <= 30)
      print("Normal in Temp");
    else if (temp > 30 && temp <= 40)
      print("its hot");
    else if (temp >= 40)
      print("its very hot");
    else {
      print("DOOMs DAY");
    }

    //  Q.6: Write a program to check whether an alphabet is a vowel or consonant.

    var alphabet = 'e';

    if (alphabet == 'a' ||
        alphabet == 'e' ||
        alphabet == 'i' ||
        alphabet == "o" ||
        alphabet == "u")
      print("$alphabet is a vowel");
    else {
      print("$alphabet is consonant");
    }

// Q.7: Write a program to calculate and print the Electricity bill of a given
// customer. Create variable for customer id, name, unit consumed by the user,
// bill_amount and print the total amount the customer needs to pay. The charge
// are as follow :

// Unit    Charge/unit
// upto 199    @1.20
// 200 and above but less than 400    @1.50
// 400 and above but less than 600    @1.80
// 600 and above             @2.00;

// Test Data :
// id: 1001
// name: James
// units: 800
// Expected Output :
// Customer IDNO :1001
// Customer Name :James
// unit Consumed :800
// Amount Charges @Rs. 2.00 per unit : 1600.00
// Net Bill Amount : 1600.00

    var id = 1001, name = "James", units = 800;
    if (units <= 199)
      print(
          "Customer ID : $id\nCustomer Name : $name\nUnits consumed : $units\nAmount charges @RS 1.20 : ${units * 1.20}\nNet bill amount : ${units * 1.20}");
    else if (units >= 200 && units < 400)
      print(
          "Customer ID : $id\nCustomer Name : $name\nUnits consumed : $units\nAmount charges  @RS 1.50 : ${units * 1.50}}\nNet bill amount : ${units * 1.50}");
    else if (units >= 400 && units < 600)
      print(
          "Customer ID : $id\nCustomer Name : $name\nUnits consumed : $units\nAmount charges  @RS 1.80 : ${units * 1.80}}\nNet bill amount : ${units * 1.80}");
    else {
      print(
          "Customer ID : $id\nCustomer Name : $name\nUnits consumed : $units\nAmount charges  @RS 2.00 : ${units * 2.00}}\nNet bill amount : ${units * 2.00}");
    }

    // Q.8: Create a list of names and print all names using list.

    List<String> mylist = ['john', 'joe', 'sara', 'mike', 'schon'];
    print(mylist);

    // Q.9: Create a list of days and remove one by one from the end of the list.

    List<String> Days = [
      'sunday',
      'monday',
      'tuesday',
      'wednesday',
      'thursday',
      'friday',
      'saturday'
    ];
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);
    Days.removeAt(Days.length - 1);
    print(Days);

    //Q.10: Create an empty list of type string called days.Use the add method to add names of 7 days and print all days.

    List<String> Days = [];
    Days.addAll(
        ['sunday', 'monday', 'tuesday', 'thursday', 'friday', 'saturday']);
    print(Days);
  }
}
