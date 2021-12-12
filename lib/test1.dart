import 'dart:io';
import 'dart:math';

void main() {
  int i = 0;
  int count = 0;
  var r = Random();
  var answer = r.nextInt(100);
  for (i = 0;; i++) {
    stdout.write('Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess != null) {
      if (guess < answer) {
        count++;
        print("➜ $guess is TOO LOW! ▼");
      } else if (guess > answer) {
        count++;
        print("➜ $guess is TOO HIGH! ▲");
      } else if (guess == answer) {
        count++;
        print("➜ $guess is CORRECT ❤,total guesses: $count");
        break;
      }
    }
  }
}
