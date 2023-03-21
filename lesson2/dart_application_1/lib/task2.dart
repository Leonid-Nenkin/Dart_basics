// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.


class DecToBinConverter {
  String decToBin(int a){
    int b = 0, i = 1;
    int coeff = 1;

    if (a<0) {
      coeff = -1;
      a = a.abs();
    }

    while(a > 0)
    {
        b = b + (a % 2)*i;
        a = (a/2).floor();
        i = i * 10;
    }

    return (b*coeff).toString();
  }

  int binToDec (String a) {
    int decimalNumber = int.parse(a, radix: 2);
    return decimalNumber;
  }
}

void runner() {
  DecToBinConverter test = DecToBinConverter();
  print(test.decToBin(-5));
  print(test.decToBin(5));
  print(test.binToDec('10011110'));
}