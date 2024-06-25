class Car {
  String brand;
  String model;
  int year;
  double milesDriven;
  static int numberOfCars = 0;
  
  Car(this.brand, this.model, this.year, [this.milesDriven = 0.0]) {
    numberOfCars++;
  }
  
  void drive(double miles) {
    milesDriven += miles;
  }
  
  double getMilesDriven() {
    return milesDriven;
  }
  
  String getBrand() {
    return brand;
  }
  
  String getModel() {
    return model;
  }
  
  int getYear() {
    return year;
  }
  
  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {

  //Car objects
  Car car1 = Car('Toyota', 'Camry', 2010);
  Car car2 = Car('Honda', 'Civic', 2015);
  Car car3 = Car('Ford', 'Mustang', 2020);
  
  // Car miles inputs
  car1.drive(100.5);
  car2.drive(200.75);
  car3.drive(300.0);
  
  // The car details
  List<Car> cars = [car1, car2, car3];
  for (Car car in cars) {
    print('Brand: ${car.getBrand()}, Model: ${car.getModel()}, Year: ${car.getYear()}, Miles Driven: ${car.getMilesDriven()}');
    print('Age: ${car.getAge()} years\n');
  }
  
  // Total number of cars
  print('Total number of Cars: ${Car.numberOfCars}');
}
