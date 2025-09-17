import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerController extends GetxController {
  var isPlaying = false.obs;
  AudioPlayer audioPlayer = AudioPlayer();
  RxDouble position = 0.0.obs; // Store position
  RxDouble duration = 0.0.obs; // Store duration

  @override
  void onInit() {
    super.onInit();

    // Listen to audio position changes
    audioPlayer.onPositionChanged.listen((Duration p) {
      position.value = p.inSeconds.toDouble(); // Update position
    });

    // Listen to audio duration (when available)
    audioPlayer.onDurationChanged.listen((Duration d) {
      duration.value = d.inSeconds.toDouble(); // Update duration
    });
  }

  // Play or Pause the song
  void togglePlayPause(String audioPath) {
    if (isPlaying.value) {
      audioPlayer.pause();
    } else {
      audioPlayer.play(UrlSource(audioPath));
    }
    isPlaying.value = !isPlaying.value;
  }
}
