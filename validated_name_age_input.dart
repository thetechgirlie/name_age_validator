import 'dart:io';

void main(List<String> args) {
  String name = '';

  // Loop to continuously prompt the user to enter their name
  // until a valid input (letters only) is provided.
  while (true) {
    stdout.write('Enter your name: '); // Prompt user for name
    name = stdin.readLineSync() ?? " "; // Read user input

    // Validate the input using a regular expression to allow only alphabetic characters
    if ((RegExp(r'^[a-zA-Z]+$').hasMatch(name))) {
      break; // Exit the loop if input is valid
    } else {
      print('Invalid name, try again'); // Error message for invalid input
    }
  }

  // Greet the user once a valid name has been entered
  print("Hello $name, welcome!!");

  int age = 0;

  // Loop to continuously prompt the user to enter their age
  // until a valid integer input is provided.
  while (true) {
    stdout.write('Please enter your age: '); // Prompt user for age
    String? ageInput = stdin.readLineSync(); // Read user input

    // Validate that the input is a valid integer using tryParse
    if (int.tryParse(ageInput ?? " ") != null) {
      age = int.parse(ageInput!); // Convert the valid input to an integer
      break; // Exit the loop if input is valid
    } else {
      print('Invalid age, please enter numbers only'); // Error message for invalid input
    }
  }

  // Display the user's name and age
  print('Hey there $name,   you are $age years old');
}
