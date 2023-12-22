import 'package:flutter/material.dart';
import 'package:lab5_153/food.dart';

class FirtsPage extends StatefulWidget {
  const FirtsPage({super.key});

  @override
  State<FirtsPage> createState() => _FirtsPageState();
}

class _FirtsPageState extends State<FirtsPage> {
  List<Food> foods = [];
  String foodValue = "กรุณาเลือกเมนู";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    foods = Food.getFood();
    // print(foods.map((e) => e.thaiFood).toList());

    // print(foods[0].thaiFood);

    // for (int i = 0; i < foods.length; i++) {//วนลูบแบบกำหนดค่าได้ว่าจะให้แสดงอันไหน
    //   print(foods[i].thaiFood);
    //   print(foods[i].price);
    // }

    for (var f in foods) {
      print(f.thaiFood);
    }
  }

  List<Widget> createRedioFood() {
    List<Widget> myFoods = [];
    for (var fd in foods) {
      myFoods.add(RadioListTile(
        title: Text(fd.thaiFood),
        subtitle: Text(fd.enFood),
        secondary: Text("${fd.price} บาท"),
        value: fd.value,
        groupValue: foodValue,
        onChanged: (value) {
          setState(() {
            foodValue = value!;
          });
        },
      ));
    }
    return myFoods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food 153"),
      ),
      body: Column(
        children: [
          const Text("เลือกเมนูอาหาร"),
          Column(
            children: createRedioFood(),
          ),
          Text(
            foodValue,
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
