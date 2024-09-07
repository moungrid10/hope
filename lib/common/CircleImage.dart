
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

class TCircleImage extends StatelessWidget {
  const TCircleImage({
    super.key,this.padding= 5, required this.image,  this.overlayColor ,  this.isNetworkImage = false, this.fit = BoxFit.contain,  this.backgroundColor, this.width=56, this.height=56,
  });

  final double width, height;
  final double padding;
  final String image;
  final bool isNetworkImage;
  final BoxFit? fit;
  final Color? backgroundColor, overlayColor;
  //final VoidCallback? onPressed; 


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius
        .circular(100),
    
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Center(
          child: isNetworkImage ? 
          CachedNetworkImage(imageUrl: image,
          fit: fit,
          color: overlayColor,
          errorWidget: (context,url,error) => Icon(Icons.error),
          )
          
           :   Image(
              fit: fit,
              image:isNetworkImage? NetworkImage(image) : AssetImage(image) as ImageProvider,
            color:Colors.black ,
            ),
          ),
      ),
      );
    
  }
}