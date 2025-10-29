class BimData {
  bool isMale;
  double height;
  int weight;
  int age;

  BimData({
    this.isMale = true,
    this.height = 174,
    this.weight = 60,
    this.age = 29,
  });

  get getResult => weight / ((height / 100) * (height / 100));
}
