import 'dart:io';

int factorial(int n) {
  if (n == 0 || n == 1)
    return 1;
  else {
    return n * factorial(n - 1);
  }
}

void main() {
  print("Lütfen bir sayı giriniz");
  String input = stdin.readLineSync()!;
  int number = int.parse(input);

  print("Girdiğiniz ${input} sayısının faktöriyeli: ${factorial(number)}");
}
