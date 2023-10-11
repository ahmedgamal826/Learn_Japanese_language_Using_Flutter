import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../model/familyMember.dart';
import '../model/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<Number> family = const [
    Number(
        sound: 'sounds/family_members/father.wav',
        image: "assets/images/family_members/family_father.png",
        JPName: "Choyaichi",
        ENName: "father"),
    Number(
        sound: 'sounds/family_members/daughter.wav',
        image: "assets/images/family_members/family_daughter.png",
        JPName: "Musume",
        ENName: "daugther"),
    Number(
        sound: 'sounds/family_members/grand father.wav',
        image: "assets/images/family_members/family_grandfather.png",
        JPName: "Ojisan",
        ENName: "Grand Father"),
    Number(
        sound: 'sounds/family_members/mother.wav',
        image: "assets/images/family_members/family_mother.png",
        JPName: "Hahaoya",
        ENName: "mother"),
    Number(
        sound: 'sounds/family_members/grand mother.wav',
        image: "assets/images/family_members/family_grandmother.png",
        JPName: "Sobo",
        ENName: "grand mother"),
    Number(
        sound: 'sounds/family_members/older bother.wav',
        image: "assets/images/family_members/family_older_brother.png",
        JPName: "Nisan",
        ENName: "older brother"),
    Number(
        sound: 'sounds/family_members/older sister.wav',
        image: "assets/images/family_members/family_older_sister.png",
        JPName: "Ane",
        ENName: "older sister"),
    Number(
        sound: 'sounds/family_members/son.wav',
        image: "assets/images/family_members/family_son.png",
        JPName: "Musuko",
        ENName: "son"),
    Number(
      sound: 'sounds/family_members/younger brohter.wav',
      image: "assets/images/family_members/family_younger_brother.png",
      JPName: "ototo",
      ENName: "younger brother",
    ),
    Number(
        sound: 'sounds/family_members/younger sister.wav',
        image: "assets/images/family_members/family_younger_sister.png",
        JPName: "emoto",
        ENName: "younger sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text(
          "Family Members",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: family[index],
            color: Color(0xff528032),
          );
        },
        // getList(numbers),
      ),
    );
  }
}
