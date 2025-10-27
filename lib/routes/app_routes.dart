import 'package:get/get.dart';
import 'package:music_streaming_app/features/artistdetails_screen/artistdetails_view.dart';
import 'package:music_streaming_app/features/audio_player_screen/audio_player_view.dart';
import 'package:music_streaming_app/features/bang_pack_screen/bang_pack_view.dart';
import 'package:music_streaming_app/features/home_screen/home_screen.dart';
import 'package:music_streaming_app/features/onboarding_screen/onboarding_view.dart';
import 'package:music_streaming_app/features/playlistdetails_screen/playlist_details_view.dart';
import 'package:music_streaming_app/features/popular_artist_screen/popular_artist_view.dart';
import 'package:music_streaming_app/features/recommended_screen/recommended_view.dart';
import 'package:music_streaming_app/features/splash_screen/splash_view.dart';


final List<GetPage> routes = [
  GetPage(name: AppRoutes.splashScreen, page: ()=> SplashView()),
  GetPage(name: AppRoutes.onboardingScreen, page: ()=> OnboardingView()),
  GetPage(name: AppRoutes.homeScreen, page: ()=> HomeScreen()),
  GetPage(name: AppRoutes.artistDetailsScreen, page: () {
    final args = Get.arguments;
    return ArtistDetailsView(
      artistName: args['artistName'],
      imageUrl: args['imageUrl'],
    );
  },),
  GetPage(name: AppRoutes.popularArtistScreen, page: ()=> PopularArtistView()),
  GetPage(name: AppRoutes.recommendedScreen, page: ()=> RecommendedView()),
  GetPage(name: AppRoutes.audioPlayerScreen, page: () {
    final args = Get.arguments;
    return AudioPlayerView(
      songTitle: args['songTitle'],
      artistName: args['artistName'],
      imageUrl: args['imageUrl'],
      audioPath: args['audioPath'],
    );
  },),
  GetPage(name: AppRoutes.playlistDetailsScreen, page: () {
    final args = Get.arguments;
    return PlaylistDetailsView(
      playlistName: args['playlistName'],
      imageUrl: args['imageUrl'],
      songCount: args['songCount'],
    );

  }),
  GetPage(name: AppRoutes.bangPackScreen, page: ()=> BangPackView()),
];

class AppRoutes{

  AppRoutes._();
  static const String splashScreen = '/splash';
  static const String onboardingScreen = '/onboarding';
  static const String homeScreen = '/home';
  static const String artistDetailsScreen = '/artistDetails';
  static const String popularArtistScreen = '/popularArtist';
  static const String recommendedScreen = '/recommended';
  static const String audioPlayerScreen = '/audioPlayer';
  static const String playlistDetailsScreen = '/playlistDetails';
  static const String bangPackScreen = '/bangPack';

}