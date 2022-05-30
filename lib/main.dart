import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Music());
}

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: PlayMusic()),
      ),
    );
  }
}

class PlayMusic extends StatefulWidget {
  const PlayMusic({Key? key}) : super(key: key);

  @override
  State<PlayMusic> createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  String fileName = '';
  final soundPlayer = AudioCache();
  void playSound(String file) {
    soundPlayer.play(file);
  }

  Expanded makeKey(String fileName, Color myColor) {
    return Expanded(
      child: Container(
        color: myColor,
        child: TextButton(
          onPressed: () {
            playSound(fileName);
          },
          child: const Text(
            '',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 50,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        makeKey('note1.wav', Colors.red),
        makeKey('note2.wav', Colors.orange),
        makeKey('note3.wav', Colors.yellow),
        makeKey('note4.wav', Colors.green),
        makeKey('note5.wav', Colors.teal),
        makeKey('note6.wav', Colors.blue),
        makeKey('note7.wav', Colors.purple),
      ],
    );
  }
}
