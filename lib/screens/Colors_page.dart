import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/familyMember.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<Number> colors = const [
    Number(
        sound: 'sounds/colors/black.wav',
        image: "assets/images/colors/color_black.png",
        JPName: "Burakku",
        ENName: "black"),
    Number(
        sound: 'sounds/colors/brown.wav',
        image: "assets/images/colors/color_brown.png",
        JPName: "Chairo",
        ENName: "brown"),
    Number(
        sound: 'sounds/colors/dusty yellow.wav',
        image: "assets/images/colors/color_dusty_yellow.png",
        JPName: "Hokori ppoi kiiro",
        ENName: "dusty yellow"),
    Number(
        sound: 'sounds/colors/gray.wav',
        image: "assets/images/colors/color_gray.png",
        JPName: "Gure",
        ENName: "gray"),
    Number(
        sound: 'sounds/colors/green.wav',
        image: "assets/images/colors/color_green.png",
        JPName: "Midori",
        ENName: "green"),
    Number(
        sound: 'sounds/colors/red.wav',
        image: "assets/images/colors/color_red.png",
        JPName: "Aka",
        ENName: "red"),
    Number(
        sound: 'sounds/colors/white.wav',
        image: "assets/images/colors/color_white.png",
        JPName: "Shiroi",
        ENName: "white"),
    Number(
        sound: 'sounds/colors/yellow.wav',
        image: "assets/images/colors/yellow.png",
        JPName: "Kero",
        ENName: "yellow"),
    Number(
      sound: 'sounds/colors/green.wav',
      image: "assets/images/colors/color_green.png",
      JPName: "Midori",
      ENName: "green",
    ),
    Number(
        sound: 'sounds/colors/black.wav',
        image: "assets/images/colors/color_black.png",
        JPName: "Burakku",
        ENName: "black"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Colors",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: colors[index],
            color: Color(0xff7D3FA2),
          );
        },
        // getList(numbers),
      ),
    );
  }
}
