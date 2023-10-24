bool isPrimeNumber(int n) {
  //Sayı birden küçükse false dönsün
  if (n <= 1) return false;
  //Sayı 2,3,5,7 ye eşitse true dönsün.
  if (n == 2 || n == 3 || n == 5 || n == 7) return true;
  //2,3,5,7 ye tam bölünebilen sayılar false dönsün.
  if (n % 2 == 0 || n % 3 == 0 || n % 5 == 0 || n % 7 == 0) return false;

  for (int i = 3; i * i <= n; i++) {
    if (n % i == 0) return false;
  }

  return true;
}

void printPrimeNumber(int n) {
  for (int i = 3; i <= n; i++) {
    if (isPrimeNumber(i)) print(i);
  }
}

void main() {
  int primeNumber = 100;
  printPrimeNumber(primeNumber);
}
