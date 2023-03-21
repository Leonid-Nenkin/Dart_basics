// Есть коллекция слов. Реализуйте метод, возвращающий Map.
// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

Map<String, int> occurence(List<String> words) {
  Map<String, int> count = {};
  for (var word in words) {
    count.update(word, (value) => value + 1, ifAbsent: () => 1);
  }

  return count;
}

void runner() {
  print(occurence(["hello", "hi", "hello", "one", "two", "two", "three"]));
}