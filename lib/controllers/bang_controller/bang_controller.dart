import 'package:get/get.dart';
import 'package:music_streaming_app/data/songs_data.dart';

class BangController extends GetxController{
  var songs = <Songs>[].obs;



  @override
  void onInit() {
    super.onInit();
    fetchSongs();
  }

  void fetchSongs() {
    songs.value = getSongs();
  }
  // Method to handle Bang button click
  void handleBangClick(int index) {


    // Increase the click count for the song
    songs[index].bangClickCount++;

    // Check if the song has been clicked 7 times
    if (songs[index].bangClickCount >= 7) {
      // Move the song to the top
      //Songs songToMove = songs.removeAt(index);
      //songs.insert(0, songToMove);
      if (index > 0) {
        Songs songToMove = songs.removeAt(index);
        songs.insert(index - 1, songToMove);  // Move the song one position up

        // Reset click count for the moved song
        songToMove.bangClickCount = 0;
        songToMove.bangUp = true;

      }

      // Reset click count for the moved song
      //songToMove.bangClickCount = 0;
    }

    // Update the UI
    songs.refresh(); // Refresh the list to reflect changes
  }





}