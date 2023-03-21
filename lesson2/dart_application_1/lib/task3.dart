// Реализуйте метод, который принимает строку слов, разделённых пробелами. 
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.


class NumberParser {
  bool isNumeric(String str) {
    try {
      num.parse(str);
    } on FormatException {
      return false;
    }

    return true;
  }


  List<num?> values(String a){
    List<num?> b =[];

    var splitted = a.split(' ');
    print(splitted);

    for (var e in splitted){
      if (isNumeric(e)) {
        b.add(num.tryParse(e));
      }
    }
    return b;
  }
}

void runner() {
  NumberParser test = NumberParser();
  print(test.values("23 Hello 5.3 4.01"));
}