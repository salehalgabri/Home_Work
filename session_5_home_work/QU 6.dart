import 'dart:io';
import 'dart:math';
/**
 * Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.
 */

void main() {
    
    int number;
    int guessNumber = Random().nextInt(20) +1;
    bool guess =true;
    int tries=3;
    print(guessNumber);
    do {
      stdout.write('Enter The Number:');
      number=int.parse(stdin.readLineSync()!);
      if (number == guessNumber){
        print("Congratulations, you guessed the number correctly.");
        print("The number You guessed is $number, and the guess number is $guessNumber.");
        guess = false;
        break;
      }
      tries--;
    } while (tries > 0);

    if(guess){
      print('You guessed wrong'); 
    }
}