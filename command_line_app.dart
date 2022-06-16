import 'dart:io';

void main() {
  //command line application
  var dataquestions = [
    'What is your name?',
    'What is your favorite color?',
    "What is your best friend's name?",
    "What is your first name?",
  ];

  var savedData = [];

  //loop through the questions
  for (var i = 0; i < dataquestions.length; i++) {
    stdout.writeln(dataquestions[i]);
    String? answer = stdin.readLineSync();
    //check if the answer is leave
    if (answer == 'leave') {
      exit(0); //exit the program
    }

    //if input is skip
    if (answer == 'skip') {
      continue; //skip the current question
    }

    savedData.add({
      'question': dataquestions[i],
      'answer': answer,
    });
  }
  //print savedData
  print(savedData);
}
