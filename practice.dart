enum PlanetType { terrestrial, gas, ice }

enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.terrestrial, moons: 1, hasRings: false);

  const Planet(
      {required this.planetType, required this.moons, required this.hasRings});

  final PlanetType planetType;
  final int moons;
  final bool hasRings;
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}

void main() {
  final myPlanet = Planet.earth;
  if (!myPlanet.isGiant) {
    print('Your planet is not a "giant planet"');
  }
}
