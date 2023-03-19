// Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num. 
//Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени». 
//Запрещается использовать методы math. В случае когда значение вернуть невозможно, 
//необходимо бросать исключение с описанием ошибки.

extension on num {
  num getRoot(num rootDegree) {
    num precision = 0.00001;       
    num root = this/rootDegree;
    num rn = this;
    int counter = 0;

    while((root - rn).abs() >= precision){

        if (counter >= 1000) {break;}

        rn = this;
        for(int i = 1; i < rootDegree; i++){
            rn = rn / root;
        }
        root = 0.5 * ( rn + root);
        counter++;
    }

    return root;
  }
}

void runner() {
  num testValue = 20;
  print(testValue.getRoot(4));
}
