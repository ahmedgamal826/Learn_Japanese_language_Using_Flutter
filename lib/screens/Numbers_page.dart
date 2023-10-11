import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/familyMember.dart';
import '../model/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: "assets/images/numbers/number_one.png",
        JPName: "ichi",
        ENName: "one"),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: "assets/images/numbers/number_two.png",
        JPName: "Ni",
        ENName: "two"),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: "assets/images/numbers/number_three.png",
        JPName: "San",
        ENName: "three"),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: "assets/images/numbers/number_four.png",
        JPName: "Shi",
        ENName: "four"),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: "assets/images/numbers/number_five.png",
        JPName: "Go",
        ENName: "five"),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: "assets/images/numbers/number_six.png",
        JPName: "Roku",
        ENName: "six"),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: "assets/images/numbers/number_seven.png",
        JPName: "Sebun",
        ENName: "seven"),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: "assets/images/numbers/number_eight.png",
        JPName: "hachi",
        ENName: "eight"),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: "assets/images/numbers/number_nine.png",
        JPName: "Kyu",
        ENName: "nine"),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: "assets/images/numbers/number_ten.png",
        JPName: "Ju",
        ENName: "ten"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Numbers",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xffF99531),
          );
        },
        // getList(numbers),
      ),
    );
  }

  // List<Widget> getList (List<Number> numbers)
  // {
  //   List<Widget> itemsList = [];
  //   for(int i=0; i<numbers.length; i++)
  //     {
  //       itemsList.add(Item(number: numbers[i]));
  //     }
  //
  //   return itemsList;
  // }
}
