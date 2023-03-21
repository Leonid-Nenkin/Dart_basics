// Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке.
// Однако цифры встречаются в виде английских слов от zero до nine.
// Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.


class StrToIntConverter {
  int convStrToInt(String str) {
      var list = [
          'zero', 
          'one', 
          'two', 
          'three', 
          'four',
          'five',
          'six',
          'seven',
          'eight',
          'nine'
      ];
      return list.indexOf(str);
  }

  Set<int> occurence(String string) {
    Set<int> numbers = {};
    var splitted = string.split(' ');

    for (var word in splitted) {
        int res = convStrToInt(word);
        if (res != -1) {
          numbers.add(res);
        }
    }
    return numbers;
  }
}

void runner() {
  StrToIntConverter test = StrToIntConverter();
  print(test.occurence('one two three cat dog'));
}