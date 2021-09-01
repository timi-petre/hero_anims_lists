import 'package:flutter/material.dart';
import 'package:hero_anims_lists/pages/screen_1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2'),
        centerTitle: true,
      ),
      body: Hero(
        transitionOnUserGestures: true,
        tag: item,
        child: buildImage(),
      ),
    );
  }

  Widget buildImage() => AspectRatio(
        aspectRatio: 1,
        child: Image.network(
          item.urlImage,
          fit: BoxFit.cover,
        ),
      );
}
