int fibonacci(int length) {
  if (length == 0 || length == 1) return length;
  return fibonacci(length - 1) + fibonacci(length - 2);
}

void main() {
  var numbers = List.generate(50, (i) => i);
  for (final number in numbers) {
    print(number.toString() + ': ' + fibonacci(number).toString());
  }
}
