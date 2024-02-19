// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class Photos extends StatelessWidget {
  const Photos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('my photo',
        style: const TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 176, 150, 194),
        ),
        
        ),centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 150, 48, 187),
      leading: const Icon(Icons.add_a_photo),
      ),backgroundColor: const Color.fromARGB(255, 190, 182, 195),
      body: Center(child:
        
            Container(decoration: BoxDecoration(color: Colors.blue),
          
          //  child:  Image(image: AssetImage("assets/logo/image2.jpg"),
          //           height: 300,
          //           width: 400,
          //          fit: BoxFit.contain,
          //           color: Color.fromARGB(240, 174, 117, 215)),
          
           //لاظهار علامة الlooding والتحميل للصورة واظهارة علامة خطاعند عدم التنزيل
             
            
               
                 child: CachedNetworkImage(
                  imageUrl: "http://via.placeholder.com/350x150",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                               ),
               ),
            ),
           );
        
  }
}