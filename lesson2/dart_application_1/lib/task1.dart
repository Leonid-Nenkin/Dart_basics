// Реализуйте методы вычисления НОД и НОК целых чисел. 
//Реализуйте метод, который разбивает число на простые множители и возвращает их.

class GCD {
  int a;
  int b;

  GCD(this.a, this.b);

  int gcd(int a, int b) {
    if (!isNatural(a)) {
      throw "$a is not natural number";
    }

    if (!(isNatural(b))) {
      throw "$b is not natural number";
    }

    while (b != 0) {
      var t = b;
      b = a % t;
      a = t;
    }
    return a;
  }

  bool isNatural(n) { 		
	 return (n >= 0.0) && (n.floor() == n);
	}

  int lcm (int a, int b) {
    if (!isNatural(a)) {
      throw "$a is not natural number";
    }

    if (!(isNatural(b))) {
      throw "$b is not natural number";
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
  GCD testGcd = GCD(6,36);
  print(testGcd.gcd(testGcd.a, testGcd.b));
  print(testGcd.lcm(testGcd.a, testGcd.b));
  print(testGcd.primeNumbers(testGcd.a));
  print(testGcd.primeNumbers(testGcd.b));
}

