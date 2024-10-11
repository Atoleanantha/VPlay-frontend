import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vplay_frontend/bloc/theme/theme_state.dart';

class VideoThumbnail extends StatelessWidget {
  ThemeState state;
   VideoThumbnail({super.key,required this.state});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          children: [

            AspectRatio(
              aspectRatio: 16 / 9, // Set the aspect ratio to 16:9
              child:
              FadeInImage.assetNetwork(
                placeholder: 'assets/loading.gif',
                fit: BoxFit.cover,
                image: "https://m.media-amazon.com/images/M/MV5BODkwOTUxMDkyMV5BMl5BanBnXkFtZTgwOTA1MDQ0MjE@._V1_SY1000_SX677_AL_.jpg",
              ),
            ),
             Positioned(
              right: 5,
                bottom: 2,
                child: Container(
                  padding: const EdgeInsets.all(3),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                     color: Colors.black54,
                   ),
                    child: const Text("1:22:10",style: TextStyle(color: Colors.white),)))
          ],
        ),


        ListTile(
          leading: const Icon(Icons.person,size: 40,),
          trailing:PopupMenuButton(itemBuilder: ((context)=>[
            PopupMenuItem(child: Text("data"),value: "d1",height: double.minPositive,),
            PopupMenuItem(child: Text("data"), value: "d5",height: double.minPositive,),
            PopupMenuItem(child: Text("data"), value: "d4",height: double.minPositive,),
            PopupMenuItem(child: Text("data"), value: "d3",height: double.minPositive,),
            PopupMenuItem(child: Text("data"), value: "d2",height: double.minPositive,),
          ]),
          onSelected: (value)=>{

          },
          ),
          title:  Text('Hello Infinity Gamming Infinity Gamming Infinity Gamming Infinity Gamming Infinity Gamming Infinity Gamming ',
              style:state.themeData.textTheme.titleSmall,
          overflow: TextOverflow.ellipsis,maxLines: 2,),
          subtitle: Text(
            'Infinite Gamming 286k Views 1 year ago',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: state.themeData.textTheme.bodyMedium,
          ),

        ),
      ],
    );
  }
}
