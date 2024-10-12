import 'dart:math';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:vplay_frontend/bloc/theme/theme_state.dart';
import 'package:vplay_frontend/screens/play_video_screen.dart';
import '../widgets/video_thumbnail.dart';


class HomeVideoList extends StatelessWidget {
  ThemeState themeState;
  HomeVideoList({super.key,required this.themeState});

  Future<void> _handleRefresh() async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomMaterialIndicator(
          // Your refresh logic
          backgroundColor: Colors.white,
          indicatorBuilder: (context, controller) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircularProgressIndicator(
                color: Colors.redAccent,
                value: controller.state.isLoading ? null : min(controller.value, 1.0),
              ),
            );
          },
          onRefresh: _handleRefresh,
          child: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: Column(
              children: [
                InkWell(

                  onTap: (){
                    showModalBottomSheet(
                      isScrollControlled: true,
                      sheetAnimationStyle: AnimationStyle(
                    duration: const Duration(seconds: 1),
                    reverseDuration: const Duration(microseconds: 500),
                    ),
                        context: context, builder: (BuildContext context){
                      
                      return PlayVideoScreen(state: themeState,);
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => PlayVideoScreen(state: themeState,),fullscreenDialog: true));
                  },
                    child: VideoThumbnail(state: themeState,)),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
                VideoThumbnail(state: themeState,),
              ],
            )
        ))
    );
  }
}
