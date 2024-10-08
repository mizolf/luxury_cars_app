class Car {
  final String brand;
  final String model;
  final int price;
  final String location;
  final int rpm;
  final int speed;
  final double acceleration;
  final double rating;
  final List<String> driveModes;

  Car({
    required this.brand,
    required this.model,
    required this.price,
    required this.acceleration,
    required this.location,
    required this.rpm,
    required this.speed,
    required this.rating,
    required this.driveModes,
  });
}

List<Car> cars = [
  Car(
      brand: 'Bugatti',
      model: 'Chiron Super Sport 300+',
      price: 3900000,
      location: 'Monaco',
      rpm: 8000,
      speed: 490,
      acceleration: 2.4,
      rating: 4.9,
      driveModes: ['EB', 'Handling', 'Autobahn', 'Lift']),
  Car(
      brand: 'Koenigsegg',
      model: 'Jesko Absolut',
      price: 3000000,
      location: 'Geneva',
      rpm: 8500,
      speed: 531, // Estimated
      acceleration: 2.6, // Estimated
      rating: 4.8,
      driveModes: ['Normal', 'Wet', 'Track', 'Beast']),
  Car(
      brand: 'Hennessey',
      model: 'Venom F5',
      price: 2100000,
      location: 'Texas',
      rpm: 8500,
      speed: 500, // Targeted
      acceleration: 2.6, // Targeted
      rating: 4.7,
      driveModes: ['Sport', 'Track', 'Drag', 'Wet']),
  Car(
      brand: 'McLaren',
      model: 'Speedtail',
      price: 2240000,
      location: 'Woking',
      rpm: 10500,
      speed: 403,
      acceleration: 2.9,
      rating: 4.6,
      driveModes: ['Comfort', 'Sport', 'Track', 'Velocity']),
  Car(
      brand: 'Aston Martin',
      model: 'Valkyrie',
      price: 3200000,
      location: 'Gaydon',
      rpm: 11100,
      speed: 354,
      acceleration: 2.5,
      rating: 4.5,
      driveModes: ['Road', 'Sport', 'Track']),
  Car(
      brand: 'Lamborghini',
      model: 'Aventador SVJ',
      price: 517770,
      location: 'Sant\'Agata Bolognese',
      rpm: 8700,
      speed: 350,
      acceleration: 2.8,
      rating: 4.4,
      driveModes: ['Strada', 'Sport', 'Corsa', 'Ego']),
  Car(
      brand: 'Ferrari',
      model: 'SF90 Stradale',
      price: 427000,
      location: 'Maranello',
      rpm: 8000,
      speed: 340,
      acceleration: 2.5,
      rating: 4.3,
      driveModes: ['eDrive', 'Hybrid', 'Performance', 'Qualify']),
  Car(
      brand: 'Porsche',
      model: '911 GT2 RS',
      price: 293200,
      location: 'Stuttgart',
      rpm: 7200,
      speed: 340,
      acceleration: 2.8,
      rating: 4.2,
      driveModes: ['Normal', 'Sport', 'Sport Plus', 'Individual']),
  Car(
      brand: 'Pagani',
      model: 'Huayra Roadster BC',
      price: 3500000,
      location: 'Modena',
      rpm: 8000,
      speed: 383,
      acceleration: 2.8,
      rating: 4.1,
      driveModes: ['Wet', 'Comfort', 'Sport', 'Race', 'ESC Off']),
  Car(
      brand: 'Rimac',
      model: 'Nevera',
      price: 2000000,
      location: 'Sveta Nedelja',
      rpm: 9500,
      speed: 412,
      acceleration: 1.97,
      rating: 5.0,
      driveModes: ['Range', 'Cruise', 'Sport', 'Track', 'Drift', 'Custom'])
];

List<Car> recommended = [
  Car(
      brand: 'BMW',
      model: 'M5',
      price: 120000,
      location: 'Munich',
      rpm: 7200,
      speed: 305,
      acceleration: 3.3,
      rating: 4.5,
      driveModes: ['Efficient', 'Sport', 'Sport Plus']),
  Car(
      brand: 'Audi',
      model: 'RS6 Avant',
      price: 130000,
      location: 'Ingolstadt',
      rpm: 7000,
      speed: 305,
      acceleration: 3.6,
      rating: 4.6,
      driveModes: ['Comfort', 'Auto', 'Dynamic', 'Individual']),
  Car(
      brand: 'Mercedes-AMG',
      model: 'E63 S',
      price: 140000,
      location: 'Affalterbach',
      rpm: 6100,
      speed: 300,
      acceleration: 3.4,
      rating: 4.4,
      driveModes: ['Comfort', 'Sport', 'Sport+', 'Race', 'Individual']),
  Car(
      brand: 'Cadillac',
      model: 'CT5-V',
      price: 85000,
      location: 'Detroit',
      rpm: 6500,
      speed: 322,
      acceleration: 3.7,
      rating: 4.2,
      driveModes: ['Tour', 'Sport', 'Track', 'Snow/Ice', 'My Mode']),
  Car(
      brand: 'Porsche',
      model: 'Panamera Turbo S',
      price: 190000,
      location: 'Stuttgart',
      rpm: 6000,
      speed: 315,
      acceleration: 3.2,
      rating: 4.7,
      driveModes: ['Normal', 'Sport', 'Sport Plus', 'Individual']),
  Car(
      brand: 'Mercedes-AMG',
      model: 'CLA 45 S',
      price: 65000,
      location: 'Affalterbach',
      rpm: 7200,
      speed: 270,
      acceleration: 4.0,
      rating: 4.0,
      driveModes: ['Slippery', 'Comfort', 'Sport', 'Sport+', 'Individual']),
  Car(
      brand: 'Tesla',
      model: 'Model S Plaid',
      price: 130000,
      location: 'Austin',
      rpm: 20000,
      speed: 322,
      acceleration: 2.1,
      rating: 4.8,
      driveModes: ['Chill', 'Sport', 'Plaid']),
  Car(
      brand: 'Dodge',
      model: 'Charger SRT Hellcat',
      price: 72000,
      location: 'Auburn Hills',
      rpm: 6200,
      speed: 328,
      acceleration: 3.6,
      rating: 4.1,
      driveModes: ['Street', 'Sport', 'Track', 'Custom']),
  Car(
      brand: 'BMW',
      model: 'M8 Gran Coupe',
      price: 130000,
      location: 'Munich',
      rpm: 7200,
      speed: 305,
      acceleration: 3.2,
      rating: 4.4,
      driveModes: ['Efficient', 'Sport', 'Sport Plus'])
];
