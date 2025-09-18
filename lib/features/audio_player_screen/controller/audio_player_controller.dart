import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerController extends GetxController {
  AudioPlayer audioPlayer = AudioPlayer();
  RxDouble position = 0.0.obs;
  RxDouble duration = 0.0.obs;
  RxBool isPlaying = false.obs;
  RxBool isFavourite = false.obs;

  @override
  void onInit() {
    super.onInit();
    audioPlayer.onPositionChanged.listen((Duration p) {
      position.value = p.inSeconds.toDouble();
    });
    audioPlayer.onDurationChanged.listen((Duration d) {
      duration.value = d.inSeconds.toDouble();
    });
  }

  // Play audio from an asset or file
  void playAudio(String path) async {
    await audioPlayer.play(AssetSource(path));
    isPlaying.value = true;
  }

  // Pause audio
  void pauseAudio() async {
    await audioPlayer.pause();
    isPlaying.value = false;
  }

  // Stop audio
  void stopAudio() async {
    await audioPlayer.stop();
    isPlaying.value = false;
  }

  // Seek audio to a specific position
  void seekAudio(double value) {
    final positionInSeconds = value.toInt();
    final durationInSeconds = duration.value.toInt();

    // Ensure that the position does not exceed the duration
    if (positionInSeconds <= durationInSeconds) {
      audioPlayer.seek(Duration(seconds: positionInSeconds));
    }
  }

  // Toggle play/pause
  void togglePlayPause(String path) async {
    if (isPlaying.value) {
      await audioPlayer.pause();
      isPlaying.value = false;
    } else {
      await audioPlayer.play(AssetSource(path));
      isPlaying.value = true;
    }
  }

  // Toggle favorite status
  void toggleFavourite() {
    isFavourite.value = !isFavourite.value;
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
