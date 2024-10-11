import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vplay_frontend/bloc/theme/theme_state.dart';

import '../bloc/theme/theme_bloc.dart';
import '../bloc/theme/theme_event.dart';
import '../widgets/video_thumbnail.dart';



class CustomBottomNavBar extends StatefulWidget {
  ThemeState themeState;
  CustomBottomNavBar({super.key,required this.themeState});

  @override
  State<CustomBottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<CustomBottomNavBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isDark = false;
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:CurvedNavigationBar(

          key: _bottomNavigationKey,
          index: 0,
          items:const <Widget>[
            Icon(Icons.home_filled, size: 30),
            Icon(Icons.video_collection, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.subscriptions, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: !isDark?Colors.white30:Colors.black,
          buttonBackgroundColor:isDark?Colors.red:Colors.white70,
          backgroundColor: !isDark?Colors.red:Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),

        appBar: AppBar(
          title: const Text('VPlay'),

          actions: [
            IconButton(
              onPressed: () {
                // Toggle theme and play rotation animation
                setState(() {
                  isDark = !isDark;
                  isDark ? _controller.forward() : _controller.reverse();
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(!isDark ? "Light mode" : "Dark mode")),
                );
                context.read<ThemeBloc>().add(const ToggleThemeEvent());
              },
              icon: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) {
                  return RotationTransition(
                      turns: child.key == const ValueKey('sun')
                          ? _controller
                          : Tween<double>(begin: 1.0, end: 0.0)
                          .animate(animation),
                      child: child);
                },
                child: Icon(
                  isDark ? Icons.dark_mode : Icons.wb_sunny,
                  key: ValueKey(isDark ? 'moon' : 'sun'),
                  color: isDark
                      ? Colors.white
                      : Colors.black, // Change color based on the theme
                ),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 35,
                  color: isDark ? Colors.white : Colors.black,
                )),

            PopupMenuButton<String>(
              onSelected: (String result) {
                // Handle the selected menu item
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: 'setting',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.settings,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                      const Text(' Setting')
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'help',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.help,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                      const Text(' Help')
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'share',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.share,
                        color: isDark ? Colors.white : Colors.black,
                      ),
                      const Text(' Share')
                    ],
                  ),
                ),
              ],
            ),

            // IconButton(onPressed: (){}, icon: Icon(Icons.person_pin,color:Colors.black,size: 35,))
          ],
        ),
        body: SingleChildScrollView(
            scrollDirection:Axis.vertical,
            child: Column(
              children: [
                VideoThumbnail(state: widget.themeState,),
                VideoThumbnail(state: widget.themeState,),
                VideoThumbnail(state: widget.themeState,),
                VideoThumbnail(state: widget.themeState,),
                VideoThumbnail(state: widget.themeState,),
                VideoThumbnail(state: widget.themeState,),
                VideoThumbnail(state: widget.themeState,),
              ],
            )
        )
    );
  }
}
