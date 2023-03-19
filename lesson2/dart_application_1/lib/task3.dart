// Реализуйте метод, который принимает строку слов, разделённых пробелами. 
//Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

bool isNumeric(String str) {
  try {
    int.parse(str);
  } on FormatException {
    return false;
  }

  return true;
}


List values(String a){
  List b =[];

  var splitted = a.split(' ');
  print(splitted);

  for (var e in splitted){
    if (isNumeric(e)) {
      b.add(int.tryParse(e));
    }
  }
  return b;
}