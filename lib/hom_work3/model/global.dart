class InputData {
  bool isMale;
  double height;
  int weight;
  int age;

  InputData({
    this.isMale = true,
    this.height = 174,
    this.weight = 60,
    this.age = 29,
  });

  get getResult => weight / ((height/100) * (height/100));
}
