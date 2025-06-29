import 'dart:math';

//Task 1
void runTask1() {
  // Завдання 1
  final List<int> numbers = [];
  for (int i = 1; i <= 100; i++) {
    numbers.add(Random().nextInt(101));
  }
  // Кращий варант від АІ
  // final numbers = List.generate(100, (_) => Random().nextInt(101));
  // print(numbers);

  // Завдання 2
  print(numbers);

  // Завдання 3
  print('65-й елемент: ${numbers[64]}');

  // Завдання 4
  numbers[49] = 1_000_000_000;

  // Завдання 5
  final List<int> newNumbers =
      numbers.where((el) {
        return el != 24 && el != 45 && el != 66 && el != 88;
      }).toList();
  print(newNumbers); // перевірка результату

  // Завдання 6 Варіант виконання 1
  int sum = 0;
  for (int i = 0; i < newNumbers.length; i++) {
    if (newNumbers[i] % 3 == 0) {
      sum += newNumbers[i];
    }
  }
  print(sum);

  //! Завдання 6 Варіант виконання 2
  // int sum = 0;
  // for (int el in newNumbers) {
  //   if (el % 3 == 0) {
  //     sum += el;
  //   }
  // }
  // print(sum);

  //! Завдання 6 Варіант виконання 3
  // int sum2 = newNumbers.where((el) => el % 3 == 0).fold(0, (a, b) => a + b);
  // print(sum2);

  // Завдання 7
  List<int> temp = [];
  for (int el in numbers) {
    if (el % 2 == 0) {
      temp.add(el);
    }
  }
  print(temp);

  // Завдання 8
  print(temp.length);
}


