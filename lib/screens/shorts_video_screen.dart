import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vplay_frontend/bloc/theme/theme_state.dart';

class ShortsVideoScreen extends StatelessWidget {
  ThemeState themeState;
  ShortsVideoScreen({super.key, required this.themeState});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        children: [
          shortVideoWidget(context),
          shortVideoWidget(context),
          shortVideoWidget(context),
          shortVideoWidget(context),
        ]
      ),
    );
  }

  Widget shortVideoWidget(BuildContext context){
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white30,
        child: Stack(

          children: [
            // Image Background
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/load.webp',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height, // Ensure full screen fit
              image:
              "https://m.media-amazon.com/images/M/MV5BODkwOTUxMDkyMV5BMl5BanBnXkFtZTgwOTA1MDQ0MjE@._V1_SY1000_SX677_AL_.jpg",
            ),

            Positioned(
              bottom: 10,
              right: 10,
              left: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min, // Ensure minimum size
                    children: [
                      // Like Button
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.thumb_up,
                          size: themeState.themeData.iconTheme.size,
                          color: themeState.themeData.iconTheme.color,
                        ),
                      ),
                      Text(
                        "10K",
                        style: themeState.themeData.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20),

                      // Dislike Button
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.thumb_down,
                          size: themeState.themeData.iconTheme.size,
                          color: themeState.themeData.iconTheme.color,
                        ),
                      ),
                      Text(
                        "Dislike",
                        style: themeState.themeData.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20),

                      // Comment Button
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.comment_rounded,
                          size: themeState.themeData.iconTheme.size,
                          color: themeState.themeData.iconTheme.color,
                        ),
                      ),
                      Text(
                        "5K",
                        style: themeState.themeData.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20),

                      // Share Button
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.share_rounded,
                          size: themeState.themeData.iconTheme.size,
                          color: themeState.themeData.iconTheme.color,
                        ),
                      ),
                      Text(
                        "Share",
                        style: themeState.themeData.textTheme.bodyLarge,
                      ),
                    ],
                  ),
              
                  // Left Positioned User Info
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // User Avatar
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey,
                            ),
                            child: Icon(
                              Icons.person,
                              size: themeState.themeData.iconTheme.size,
                            ),
                          ),
                          const SizedBox(width: 10), // Add spacing between avatar and text
                          Text(
                            "@InfinityGaming",
                            style: themeState.themeData.textTheme.titleMedium,
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: themeState.themeData.filledButtonTheme.style,
                            child: const Text("Subscribe"),
                          ),

                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width-90,
                        child: Text(
                          maxLines: 2,
                          "Hehbe #hdh dkjn kdjsn kdsjf dksjf kdsjfk kjdn ",
                          style: themeState.themeData.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Right Positioned Buttons

          ],
        )

    );
  }
}
