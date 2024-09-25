void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9];

  print("List original $numbers");
  print("List length ${numbers.length}");
  print("List index ${numbers[0]}");
  print("List first ${numbers.first}");
  print("List reversed ${numbers.reversed}");
  
  final reversedNumbers = numbers.reversed;
  
  print("Iterable ${reversedNumbers}");
  print("List ${reversedNumbers.toList()}");
  print("Set ${reversedNumbers.toSet()}");
  
  final numbersGreaterThan5 = numbers.where( (num) {
    return num > 5;
  } );
  
  print("5> ${numbersGreaterThan5.toSet()}");
  
}
