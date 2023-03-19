// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.

int decToBin(int a){
  int b = 0, i = 1;

  while(a > 0)
  {
      b = b + (a % 2)*i;
      a = (a/2).floor();
      i = i * 10;
  }

  return b;
}

int binToDec (String a) {
  int decimalNumber = int.parse(a, radix: 2);
  return decimalNumber;
}