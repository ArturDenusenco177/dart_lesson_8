import 'dart:math';
import 'package:dart_lesson_8/names.dart';
import 'package:word_generator/word_generator.dart';

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

//Task 2
void runTask2() {
  // Завдання 6 / 7
  Set<String> ukrainianNamesSet1 = ukrainianNames1.toSet();
  Set<String> ukrainianNamesSet2 = ukrainianNames2.toSet();

  // Завдання 8
  Set<String> namesUnion = ukrainianNamesSet1.union(ukrainianNamesSet2);
  print(namesUnion);
  print(namesUnion.length);

  // Завдання 9
  Set<String> namesIntersection = ukrainianNamesSet1.intersection(
    ukrainianNamesSet2,
  );
  print(namesIntersection);

  // Завдання 10
  Set<String> namesDifference = ukrainianNamesSet1.difference(
    ukrainianNamesSet2,
  );
  print(namesDifference);
}

//Task 3
void runTask3() {
  // Завдання 2
  final wordGenerator = WordGenerator();
  List<String> nouns = wordGenerator.randomNouns(50);
  print(nouns);

  // Завдання 3
  Map<String, int> nounsMap = {};
  for (String name in nouns) {
    nounsMap[name] = name.length;
  }
  //print(nounsMap);

  // Завдання 4
  Map<String, int> tempNouns = {};
  for (final entry in nounsMap.entries) {
    if (entry.value % 2 == 0) {
      tempNouns[entry.key] = entry.value;
    }
  }
  print(tempNouns);

  // Завдання 5
  print(tempNouns.keys.toList());


  // Кращий варіант від АІ 
  // Створення Map: слово -> довжина
  // final nounsMap = {for (var name in nouns) name: name.length};
  // Фільтрація: залишити лише ті, де довжина парна
  //final tempNouns = Map.fromEntries(
  //  nounsMap.entries.where((entry) => entry.value % 2 == 0),
  //);
  //print(tempNouns);
}
