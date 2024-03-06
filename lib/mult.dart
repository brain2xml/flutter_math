import 'dart:math';

// void main() {
//   List items = [new Mult()];
//   print(items[0].toString());
// }

class Mult {
  int x = 1;
  int y = 1;
  int z = 1;

  Mult(){
    x = Random().nextInt(9) + 1;
    y = Random().nextInt(9) + 1;
    z = x * y;
  }

  @override
  String toString() {
    return '$x * $y = $z';
  }

}