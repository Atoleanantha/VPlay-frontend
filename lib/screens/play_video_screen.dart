import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vplay_frontend/bloc/theme/theme_state.dart';
import 'package:vplay_frontend/widgets/video_thumbnail.dart';

class PlayVideoScreen extends StatelessWidget {
  ThemeState state;
  PlayVideoScreen({super.key, required this.state});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, // Set the aspect ratio to 16:9
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              fit: BoxFit.cover,
              image:
                  "https://m.media-amazon.com/images/M/MV5BODkwOTUxMDkyMV5BMl5BanBnXkFtZTgwOTA1MDQ0MjE@._V1_SY1000_SX677_AL_.jpg",
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ExpansionTile(
                  showTrailingIcon: false,
                  title: Text(
                    "ndjskfnksdfnkdnkvgjndfjfnkv dnfkv dfn k dfkjvn vdfj",
                    style: state.themeData.textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  subtitle: Text(
                    "18 lakh viewa 1 month ago",
                    style: state.themeData.textTheme.bodyMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                ListTile(
                  leading: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey),
                      child: Icon(
                        Icons.person,
                        size: state.themeData.iconTheme.size,
                      )),
                  title: Text(
                    "Infinity Gameing",
                    style: state.themeData.textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    "25.6K",
                    style: state.themeData.textTheme.bodyLarge,
                  ),
                  trailing: FilledButton(
                    onPressed: () {},
                    style: state.themeData.filledButtonTheme.style,
                    child: const Text("Subscribe"),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              label: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.thumb_up_alt_outlined,
                                      size: state.themeData.iconTheme.size,
                                      color: state.themeData.iconTheme.color,
                                    ),
                                  ),
                                  Text(
                                    " 10K  |  ",
                                    style: state.themeData.textTheme.bodyLarge,
                                  ),
                                  InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.thumb_down_alt_outlined,
                                        size: state.themeData.iconTheme.size,
                                        color: state.themeData.iconTheme.color,
                                      )),
                                ],
                              ),
                              selected: true,
                              autofocus: true,
                              showCheckmark: false,
                              onSelected: (val) {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              label: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.share_outlined,
                                      size: state.themeData.iconTheme.size,
                                      color: state.themeData.iconTheme.color,
                                    ),
                                    Text(
                                      "  Share",
                                      style:
                                          state.themeData.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              selected: true,
                              autofocus: true,
                              showCheckmark: false,
                              onSelected: (val) {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              label: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.download_outlined,
                                      size: state.themeData.iconTheme.size,
                                      color: state.themeData.iconTheme.color,
                                    ),
                                    Text(
                                      "  Download",
                                      style:
                                          state.themeData.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              selected: true,
                              autofocus: true,
                              showCheckmark: false,
                              onSelected: (val) {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              label: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.bookmark_border_outlined,
                                      size: state.themeData.iconTheme.size,
                                      color: state.themeData.iconTheme.color,
                                    ),
                                    Text(
                                      "  Save",
                                      style:
                                          state.themeData.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              selected: true,
                              autofocus: true,
                              showCheckmark: false,
                              onSelected: (val) {},
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            ChoiceChip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              label: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.share_outlined,
                                      size: state.themeData.iconTheme.size,
                                      color: state.themeData.iconTheme.color,
                                    ),
                                    Text(
                                      "  Share",
                                      style:
                                          state.themeData.textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ),
                              selected: true,
                              autofocus: true,
                              showCheckmark: false,
                              onSelected: (val) {},
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                          onTap: () {


                            showModalBottomSheet(
                              shape: const BeveledRectangleBorder(),
                                showDragHandle: true,

                                useSafeArea: true,
                                context: context,
                                builder: (BuildContext context) {
                                  return ListView.builder(
                                        itemCount: 10,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return commentListTile();
                                        },

                                  );
                                });
                          },
                          child: ListTile(
                            title:  Text("Comments",style: state.themeData.textTheme.titleMedium,),
                          )),
                      InkWell(
                        onTap: () {
                          // close previous bottom sheet when next is opened
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                          showModalBottomSheet(
                              isScrollControlled: true,
                              sheetAnimationStyle: AnimationStyle(
                                duration: const Duration(seconds: 1),
                                reverseDuration: const Duration(microseconds: 500),
                              ),
                              context: context, builder: (BuildContext context){

                            return PlayVideoScreen(state: state,);
                          });
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => PlayVideoScreen(
                          //               state: state,
                          //             ),
                          //         fullscreenDialog: true));
                        },
                        child: VideoThumbnail(state: state),
                      ),
                      InkWell(
                        onTap: () {
                          // close previous bottom sheet when next is opened
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                          showModalBottomSheet(
                              isScrollControlled: true,
                              sheetAnimationStyle: AnimationStyle(
                                duration: const Duration(seconds: 1),
                                reverseDuration: const Duration(microseconds: 500),
                              ),
                              context: context, builder: (BuildContext context){

                            return PlayVideoScreen(state: state,);
                          });
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => PlayVideoScreen(
                          //               state: state,
                          //             ),
                          //         fullscreenDialog: true));
                        },
                        child: VideoThumbnail(state: state),
                      ),
                      InkWell(
                        onTap: () {
                          // close previous bottom sheet when next is opened
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                          showModalBottomSheet(
                              isScrollControlled: true,
                              sheetAnimationStyle: AnimationStyle(
                                duration: const Duration(seconds: 1),
                                reverseDuration: const Duration(microseconds: 500),
                              ),
                              context: context, builder: (BuildContext context){

                            return PlayVideoScreen(state: state,);
                          });
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => PlayVideoScreen(
                          //               state: state,
                          //             ),
                          //         fullscreenDialog: true));
                        },
                        child: VideoThumbnail(state: state),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget commentListTile(){
    return ListTile(
      title: Text(
        "Username",
        style: state
            .themeData.textTheme.bodySmall,
      ),
      leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(25),
              color: Colors.grey),
          child: Icon(
            Icons.person,
            size: state
                .themeData.iconTheme.size,
          )),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello how are you",
              style: state.themeData.textTheme
                  .bodyMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons
                          .thumb_up_alt_outlined,
                      size: state.themeData
                          .iconTheme.size,
                      color: state.themeData
                          .iconTheme.color,
                    ),
                    Text(" 10")
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons
                      .thumb_down_alt_outlined,
                  size: state.themeData
                      .iconTheme.size,
                  color: state.themeData
                      .iconTheme.color,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons
                      .message_outlined,
                  size: state.themeData
                      .iconTheme.size,
                  color: state.themeData
                      .iconTheme.color,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


