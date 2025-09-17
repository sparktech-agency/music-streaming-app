
class PlayList{

  final String playlistName;
  final String imageUrl;
  final int songCount;

  PlayList({required this.playlistName, required this.imageUrl, required this.songCount});
}

List<PlayList> getPlaylist(){
  return [
    PlayList(playlistName: 'New BANGrs Weekly (Canada)', imageUrl: 'assets/images/playlist_1.jpg', songCount: 50),
    PlayList(playlistName: 'BANGR 50(FAN VIRAL)', imageUrl: 'assets/images/playlist_2.jpg', songCount: 30),
    PlayList(playlistName: 'New BANGrs Weekly (Canada)', imageUrl: 'assets/images/playlist_1.jpg', songCount: 90),
    PlayList(playlistName: 'POP BANGRS(Canada)', imageUrl: 'assets/images/playlist_3.jpg', songCount: 70),
  ];

}