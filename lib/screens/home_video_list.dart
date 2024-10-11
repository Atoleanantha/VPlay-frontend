import 'package:flutter/material.dart';
import 'package:vplay_frontend/bloc/theme/theme_state.dart';
import '../widgets/video_thumbnail.dart';

class HomeVideoList extends StatelessWidget {
  ThemeState themeState;
  HomeVideoList({super.key,required this.themeState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: Column(
              children: [
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
              ],
            )
        )
    );
  }
}
