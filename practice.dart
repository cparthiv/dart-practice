const second = Duration(seconds: 1);

void printWithDelay(String message) async {
  await Future.delayed(second);
  print(message);
}

void main() {
  printWithDelay('message');
}
