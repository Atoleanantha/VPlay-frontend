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
        AspectRatio(
          aspectRatio: 16 / 9, // Set the aspect ratio to 16:9
          child:Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            fit: BoxFit.cover,
            // Adjust how the image fits within the aspect ratio
          ),
          // Image.asset('assets/images/img.jpg',fit: BoxFit.fill,width: double.maxFinite),
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
          title:  Text('Infinity Gamming Infinity Gamming Infinity Gamming Infinity Gamming Infinity Gamming Infinity Gamming ',
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
