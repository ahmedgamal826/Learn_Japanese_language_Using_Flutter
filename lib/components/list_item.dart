//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tokuappnew/model/phrase.dart';

import '../model/familyMember.dart';
import '../model/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.number, required this.color});

  final Number number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF4D9), child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.JPName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  number.ENName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({required this.color, required this.phrase});

  final Color color;
  final Phrase phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.JPName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  phrase.ENName,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(phrase.sound));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
