import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class BgMusic extends StatefulWidget {
  const BgMusic({super.key});

  @override
  State<BgMusic> createState() => _BgMusicState();
}

class _BgMusicState extends State<BgMusic> {
  @override
  void initState() {
    super.initState();

    FlameAudio.bgm.initialize();
  }

  @override
  void dispose() {
    super.dispose();

    FlameAudio.bgm.dispose();
  }

  void playBGM() {
    FlameAudio.bgm.play(
      'music.mp3',
    );
    Vibration.vibrate(duration: 20000);
  }

  void stopBGM() {
    FlameAudio.bgm.stop();
    Vibration.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              playBGM();
            },
            child: const Text("Play"),
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              stopBGM();
            },
            child: const Text("Stop"),
          ),
        ),
      ],
    );
  }
}
