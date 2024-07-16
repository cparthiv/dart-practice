var year = 2024;
var numbers = [2, 0, 2, 4];

void main() {
  print('Hello, world!');

  if (year >= 2001) {
    print('21st century');
  }

  for (final number in numbers) {
    print(number);
  }
  while (year < 2030) {
    year++;
    print(year);
  }
}
