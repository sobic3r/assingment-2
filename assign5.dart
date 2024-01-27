import 'dart:io';

void main() {
  bool continueProgram = true;

  while (continueProgram) {
    print("Select an option:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Time Conversion");

    int userChoice = int.parse(stdin.readLineSync()!);

    switch (userChoice) {
      case 1:
        performLengthConversion();
        break;
      case 2:
       TemperatureConversion();
        break;
      case 3:
        TimeConversion();
        break;
      default:
        print("Invalid option");
        break;
    }

    print("Do you want to continue?");
    print("1. Yes");
    print("2. No");

    int continueChoice = int.parse(stdin.readLineSync()!);

    if (continueChoice != 1) {
      continueProgram = false;
    }
  }
}

void performLengthConversion() {
  print("Length Conversion Options:");
  print("1. Meter to Kilometers");
  print("2. Kilometer to Meters");
  print("3. Feet to Inches");
  print("4. Inches to Feet");
  print("5. Centimeter to Meter");
  print("6. Meter to Centimeter");

  int lengthChoice = int.parse(stdin.readLineSync()!);

  num result;

  switch (lengthChoice) {
    case 1:
      result = meterToKilometers();
      break;
    case 2:
      result = kilometerToMeters();
      break;
    case 3:
      result = feetToInches();
      break;
    case 4:
      result = InchesToFeet();
      break;
    case 5:
      result = CentimeterToMeter();
      break;
    case 6:
      result = MeterToCentimeter();
      break;
    default:
      print("Invalid length conversion option");
      return;
  }

  print("Conversion result: $result");
}

 meterToKilometers() {
  print("Enter length in meters:");
  num meters = num.parse(stdin.readLineSync()!);
  return meters / 1000;
}

 kilometerToMeters() {
  print("Enter length in kilometers:");
  num kilometers = num.parse(stdin.readLineSync()!);
  return kilometers * 1000;
}

 feetToInches() {
  print("Enter length in feet:");
  num feet = num.parse(stdin.readLineSync()!);
  return feet * 12;
}

 InchesToFeet() {
  print("Enter length in inches:");
  num inches = num.parse(stdin.readLineSync()!);
  return inches / 12;
}

 CentimeterToMeter() {
  print("Enter length in centimeters:");
  num centimeters = num.parse(stdin.readLineSync()!);
  return centimeters / 100;
}

MeterToCentimeter() {
  print("Enter length in meters:");
  num meters = num.parse(stdin.readLineSync()!);
  return meters * 100;
}

TemperatureConversion() {
  print("Temperature Conversion Options:");
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");

  int tempChoice = int.parse(stdin.readLineSync()!);

  num result;

  switch (tempChoice) {
    case 1:
      result = fahrenheitToCelsius();
      break;
    case 2:
      result = celsiusToFahrenheit();
      break;
    default:
      print("Invalid temperature conversion option");
      return;
  }

  print("Conversion result: $result");
}

num fahrenheitToCelsius() {
  print("Enter temperature in Fahrenheit:");
  num fahrenheit = num.parse(stdin.readLineSync()!);
  return (fahrenheit - 32) * 5 / 9;
}

num celsiusToFahrenheit() {
  print("Enter temperature in Celsius:");
  num celsius = num.parse(stdin.readLineSync()!);
  return (celsius * 9 / 5) + 32;
}

void TimeConversion() {
  print("Time Conversion Options:");
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes");
  print("6. Milliseconds to Hours");

  int timeChoice = int.parse(stdin.readLineSync()!);

  num result;

  switch (timeChoice) {
    case 1:
      result = SecondsToMinutes();
      break;
    case 2:
      result = MinutesToSeconds();
      break;
    case 3:
      result = MinutesToHours();
      break;
    case 4:
      result = SecondsToHours();
      break;
    case 5:
      result = MillisecondsToMinutes();
      break;
    case 6:
      result = MillisecondsToHours();
      break;
    default:
      print("Invalid time conversion option");
      return;
  }

  print("Conversion result: $result");
}

 SecondsToMinutes() {
  print("Enter time in seconds:");
  num seconds = num.parse(stdin.readLineSync()!);
  return seconds / 60;
}

MinutesToSeconds() {
  print("Enter time in minutes:");
  num minutes = num.parse(stdin.readLineSync()!);
  return minutes * 60;
}

MinutesToHours() {
  print("Enter time in minutes:");
  num minutes = num.parse(stdin.readLineSync()!);
  return minutes / 60;
}

SecondsToHours() {
  print("Enter time in seconds:");
  num seconds = num.parse(stdin.readLineSync()!);
  return seconds / 3600;
}

MillisecondsToMinutes() {
  print("Enter time in milliseconds:");
  num milliseconds = num.parse(stdin.readLineSync()!);
  return milliseconds / 60000;
}

MillisecondsToHours() {
  print("Enter time in milliseconds:");
  num milliseconds = num.parse(stdin.readLineSync()!);
  return milliseconds / 3600000;
}

