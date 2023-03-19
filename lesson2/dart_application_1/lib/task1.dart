// Реализуйте методы вычисления НОД и НОК целых чисел. 
//Реализуйте метод, который разбивает число на простые множители и возвращает их.

int swap(a, b) {
  
  return 0;
}

int gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
  
}

int lcm (int a, int b) {
	return (a / gcd (a, b) * b).toInt();
}
