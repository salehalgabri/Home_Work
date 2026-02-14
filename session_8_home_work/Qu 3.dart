/**
 *  Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
 * */

 class Grade {
  int? _score;

  Grade({int? score}) : _score = score;

  int? get score => _score;

  set score(int score) {
    if (score < 0 || score > 100) {
      print("Invalid score");
    }else {
    _score = score;
    }
  }

  bool get isPass => _score! >= 50;
 }

 void main() {
  Grade saleh = Grade(score: 73);
  print("Grade: ${saleh.score}");
  print("Is Pass: ${saleh.isPass}");

  saleh.score = 40;
  print("Grade: ${saleh.score}");
  print("Is Pass: ${saleh.isPass}");

  saleh.score = 100;

  saleh.score = -10;

  saleh.score = 101;

 }