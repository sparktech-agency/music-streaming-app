class Songs{

  final String songTitle;
  final String listenersCount;
  final String imagePath;
  final String graphPath;
  final String audioPath;
  final String bangIcon;
  final String artistName;
  int bangClickCount;


  Songs({
    required this.songTitle,
    required this.listenersCount,
    required this.imagePath,
    required this.graphPath,
    required this.audioPath,
    required this.bangIcon,
    required this.artistName,
    this.bangClickCount = 0,
  });

}

List<Songs> getSongs(){

  return [
    Songs(
      songTitle: 'YEAH! by Usher (Official Habibi Remix)',
      listenersCount: '223478',
      imagePath: 'assets/images/song_image_1.png',
      graphPath: 'assets/app_icons/graph.svg',
      audioPath: 'audios/yeah_by_usher_official_habibi_remix.mp3',
      bangIcon: 'assets/app_icons/bang.png',
      artistName: 'Usher',
    ),
    Songs(
      songTitle: '2Am Vibes',
      listenersCount: '2238',
      imagePath: 'assets/images/song_image_2.png',
      graphPath: 'assets/app_icons/graph.svg',
      audioPath: 'audios/yeah_by_usher_official_habibi_remix.mp3',
      bangIcon: 'assets/app_icons/bang.png',
      artistName: 'Usher',
    ),
    Songs(
      songTitle: 'Lost in Translation',
      listenersCount: '10038',
      imagePath: 'assets/images/song_image_3.png',
      graphPath: 'assets/app_icons/graph.svg',
      audioPath: 'audios/yeah_by_usher_official_habibi_remix.mp3',
      bangIcon: 'assets/app_icons/bang.png',
      artistName: 'Usher',
    ),
    Songs(
      songTitle: 'Midnight Dreams',
      listenersCount: '2238',
      imagePath: 'assets/images/song_image_4.jpg',
      graphPath: 'assets/app_icons/graph.svg',
      audioPath: 'audios/yeah_by_usher_official_habibi_remix.mp3',
      bangIcon: 'assets/app_icons/bang.png',
      artistName: 'Usher',
    ),
    Songs(
      songTitle: '2Am Vibes',
      listenersCount: '2238',
      imagePath: 'assets/images/song_image_2.png',
      graphPath: 'assets/app_icons/graph.svg',
      audioPath: 'audios/yeah_by_usher_official_habibi_remix.mp3',
      bangIcon: 'assets/app_icons/bang.png',
      artistName: 'Usher',
    ),
  ];



}