import 'package:flutter/material.dart';
import 'package:tokuappnew/model/phrase.dart';

import '../components/list_item.dart';
import '../model/familyMember.dart';

class PharsesPage extends StatelessWidget {
  const PharsesPage({Key? key}) : super(key: key);

  final List<Phrase> phrases = const [
    Phrase(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        JPName: "Kōdoku suru koto o",
        ENName: "dont forget to subscribe"),
    Phrase(
      sound: 'sounds/phrases/i_love_programming.wav',
      JPName: 'Watashi wa puroguramingu',
      ENName: 'i love  programming',
    ),
    Phrase(
      sound: 'sounds/phrases/programming_is_easy.wav',
      JPName: 'Puroguramingu wa kantandesu ',
      ENName: 'programming is easy',
    ),
    Phrase(
      sound: 'sounds/phrases/where_are_you_going.wav',
      JPName: 'Doko ni iku no',
      ENName: 'where are you going',
    ),
    Phrase(
      sound: 'sounds/phrases/what_is_your_name.wav',
      JPName: 'Namae wa nandesu ka',
      ENName: 'what is your name ?',
    ),
    Phrase(
      sound: 'sounds/phrases/i_love_anime.wav',
      JPName: 'Watashi wa anime ga ',
      ENName: 'i love anime',
    ),
    Phrase(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      JPName: 'Go kibun wa ikagadesu ka',
      ENName: 'how are you feeling?',
    ),
    Phrase(
      sound: 'sounds/phrases/are_you_coming.wav',
      JPName: 'Kimasu ka',
      ENName: 'are you coming?',
    ),
    Phrase(
      sound: 'sounds/phrases/yes_im_coming.wav',
      JPName: 'Hai watashi wa kite imasu',
      ENName: 'yes i am coming',
    ),
    Phrase(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      JPName: 'Go kibun wa ikagadesu ka',
      ENName: 'how are you feeling?',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff49332A),
        title: Text("Pharses"),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhraseItem(phrase: phrases[index], color: Color(0xff47A5CB));
        },
        // getList(numbers),
      ),
    );
  }
}
