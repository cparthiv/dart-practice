void checkAstronauts(astronauts) {
  if (astronauts == 0) {
    throw StateError('No astronauts');
  } else {
    print('There are $astronauts astronauts!');
  }
}

void main() {
  checkAstronauts(1);
}
