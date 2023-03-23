// Реализуйте методы вычисления НОД и НОК целых чисел. 
//Реализуйте метод, который разбивает число на простые множители и возвращает их.

class GCD {
  int gcd(int a, int b) {
    if (!isNatural(a)) {
      throw ArgumentError("$a is not natural number");
    }

    if (!(isNatural(b))) {
      throw ArgumentError("$b is not natural number");
    }

    while (b != 0) {
      var t = b;
      b = a % t;
      a = t;
    }
    return a;
  }

  bool isNatural(num n) { 		
	 return (n >= 0.0) && (n.floor() == n);
	}

  int lcm (int a, int b) {
    if (!isNatural(a)) {
      throw ArgumentError("$a is not natural number");
    }

    if (!(isNatural(b))) {
      throw ArgumentError("$b is not natural number");
    }

    return (a / gcd (a, b) * b).toInt();
  }

  List<int> primeNumbers(int number) {
      int factor = 2;
      List<int> lstFactors = [];

      if (number < 2) return [];
      
      while (number / factor != 1) {
        if (number % factor == 0) {
          lstFactors.add(factor);
          number = number ~/ factor;
          factor = 2;
        } else {
          factor++;
        }
      }

      lstFactors.add(factor);
      return lstFactors;
    }
}

void runner() {
  GCD testGcd = GCD();
  print(testGcd.gcd(6,36));
  print(testGcd.lcm(6,36));
  print(testGcd.primeNumbers(6));
  print(testGcd.primeNumbers(36));
}

