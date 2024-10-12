

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vplay_frontend/screens/home_video_list.dart';
import 'package:vplay_frontend/widgets/video_thumbnail.dart';

import '../bloc/theme/theme_bloc.dart';
import '../bloc/theme/theme_event.dart';
import '../bloc/theme/theme_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
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

  // List of widgets to display based on the selected page


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ThemeBloc(),
        child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, themeState) {
          final List<Widget> _pages = [
            HomeVideoList(themeState: themeState),
            Center(child: Text('Videos Page')),
            Center(child: Text('Add Content Page')),
            Center(child: Text('Subscriptions Page')),
            Center(child: Text('Profile Page')),
          ];
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Theming with BLoC',
              theme: themeState.themeData,
              home: Scaffold(
                bottomNavigationBar: CurvedNavigationBar(
                  key: _bottomNavigationKey,
                  index: 0,
                  items: const <Widget>[
                    Icon(Icons.home_filled, size: 30),
                    Icon(Icons.video_collection, size: 30),
                    Icon(Icons.add, size: 30),
                    Icon(Icons.subscriptions, size: 30),
                    Icon(Icons.perm_identity, size: 30),
                  ],
                  color: !isDark ? Colors.white30 : Colors.black,
                  buttonBackgroundColor: isDark ? Colors.red : Colors.white70,
                  backgroundColor: !isDark ? Colors.red : Colors.white,
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
                          isDark
                              ? _controller.forward()
                              : _controller.reverse();
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                              Text(!isDark ? "Light mode" : "Dark mode")),
                        );
                        context
                            .read<ThemeBloc>()
                            .add(const ToggleThemeEvent());
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
                        onPressed: () {
                          showSearch(context: context, delegate: CustomSearchDelegate(state: themeState));
                        },
                        icon: Icon(
                          Icons.search,
                          size: 35,
                          color: isDark ? Colors.white : Colors.black,
                        )),

                    PopupMenuButton<String>(
                      onSelected: (String result) {
                        // Handle the selected menu item
                      },
                      itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
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
                  ],
                ),
                body: _pages[_page], // Update the body based on the selected page
              ));
        }));
  }
}



class CustomSearchDelegate extends SearchDelegate {

  ThemeState state;
  CustomSearchDelegate({required this.state});

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: state.themeData.appBarTheme,
        iconTheme: state.themeData.iconTheme,
      actionIconTheme: state.themeData.actionIconTheme,
      searchBarTheme: state.themeData.searchBarTheme
    );
  }
  @override
  InputDecorationTheme? get searchFieldDecorationTheme => InputDecorationTheme(

    hintStyle: state.themeData.textTheme.titleSmall // Hint text style
  );

  // Customize the search field text style
  @override
  TextStyle? get searchFieldStyle => state.themeData.textTheme.titleMedium;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null); // Close search bar if query is empty
          } else {
            query = ''; // Clear the search query
          }
        },
      )
    ];
  }

  // A leading icon on the left of the app bar (e.g. back button)
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, null), // Close the search delegate
    );
  }

  // Show the results for the search query
  @override
  Widget buildResults(BuildContext context) {
    final List<String> searchResults = _getSearchResults(query);
    if (searchResults.isEmpty) {
      return Center(
        child: Text("No results found."),
      );
    }
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              close(context, searchResults[index]);
        },
            child: VideoThumbnail(state: state));
      },
    );
  }

  // Show suggestions while typing
  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> suggestions = query.isEmpty
        ? recentSearches
        : _getSearchResults(query); // Show recent searches or matching results

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
        );
        
      },
    );
  }

  // Simulated search function (Replace with actual search logic)
  List<String> _getSearchResults(String query) {
    final allResults = [
      "Apple",
      "Banana",
      "Cherry",
      "Mango",
      "Peach",
      "Pineapple",
      "Strawberry",
    ];

    return allResults
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  // Recent searches (optional)
  final List<String> recentSearches = [
    "Mango",
    "Pineapple",
    "Strawberry",
  ];
}
