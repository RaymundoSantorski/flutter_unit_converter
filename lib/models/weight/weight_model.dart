abstract class Weight {
  double value;
  Weight(this.value);
  // factory Weight.from(Type type, double value) {
  //   return
  // }

  String get unit => '';
  Type get type => Weight;
  Weight to(Type type) => this;
}
