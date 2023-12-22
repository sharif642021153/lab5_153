class Food {
  final String thaiFood;
  final String enFood;
  final double price;
  final String value;

  Food(
      {required this.thaiFood,
      required this.enFood,
      required this.price,
      required this.value});

  static List<Food> getFood() {
    return [
      Food(
          thaiFood: "คั่วแลน", enFood: "kua-lan", price: 150, value: "คั่วแลน"),
      Food(thaiFood: "ต้มยำ", enFood: "yomyam", price: 200, value: "ต้มยำ"),
      Food(thaiFood: "ชาบู", enFood: "shabu", price: 299, value: "ชาบู"),
      Food(
          thaiFood: "ก๋วยเตี๋ยวเนื้อ",
          enFood: "beef noodle",
          price: 80,
          value: "ก๋วยเตี๋ยวเนื้อ"),
    ];
  }
}
