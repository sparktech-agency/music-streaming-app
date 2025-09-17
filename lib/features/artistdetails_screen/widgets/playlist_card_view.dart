import 'package:flutter/material.dart';
import 'package:music_streaming_app/data/featured_playlists.dart';
import 'package:music_streaming_app/features/artistdetails_screen/widgets/featured_playlist_card.dart';

class PlaylistCardView extends StatelessWidget {
  const PlaylistCardView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PlayList> playlists = getPlaylist();

    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: playlists.length,
        itemBuilder: (context, index) {
          final playlist = playlists[index];
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FeaturedPlaylistCard(
              playlistName: playlist.playlistName,
              imageUrl: playlist.imageUrl,
              songCount: playlist.songCount,
            ),
          );
        },
      ),
    );
  }
}
