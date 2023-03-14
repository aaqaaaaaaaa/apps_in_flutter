import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatefulWidget {
  const CachedImage({Key? key}) : super(key: key);

  @override
  _CachedImageState createState() => _CachedImageState();
}

class _CachedImageState extends State<CachedImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cached Network Image'),
      ),
      body: Center(
        child: CachedNetworkImage(
          progressIndicatorBuilder: (context, url, progress) {
            if(progress.progress!=null ){
              final percent = progress.progress! *100;
              return Text('$percent% done download');
            }else{
              return const Text('Loaded!');
            }
          },
          // placeholder: (context, url) => const CircularProgressIndicator(),
          imageUrl: 'https://picsum.photos/250?image=9',
        ),
      ),
    );
  }
}
