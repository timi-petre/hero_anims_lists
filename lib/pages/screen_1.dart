import 'package:flutter/material.dart';
import 'package:hero_anims_lists/pages/screen_2.dart';

class Item {
  final String urlImage;
  final String title;
  Item({
    required this.urlImage,
    required this.title,
  });
}

class Screen1 extends StatelessWidget {
  Screen1({Key? key}) : super(key: key);
  final items = <Item>[
    Item(
      title: 'Item 1',
      urlImage:
          'https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=889&q=80',
    ),
    Item(
      title: 'Item 2',
      urlImage:
          'https://images.unsplash.com/photo-1497553304104-5825931801a2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmFwYWxtfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Item(
      title: 'Item 3',
      urlImage:
          'https://images.unsplash.com/photo-1630482466321-d7e7c86ebacd?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Item(
      title: 'Item 4',
      urlImage:
          'https://images.unsplash.com/photo-1630432664232-caa2efff4ec4?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
    Item(
      title: 'Item 5',
      urlImage:
          'https://images.unsplash.com/photo-1630411997810-f1a966a41d66?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Screen2(item: item)),
            ),
            child: Row(
              children: [
                Hero(
                  transitionOnUserGestures: true,
                  tag: item,
                  child: buildImage(item.urlImage),
                ),
                const SizedBox(width: 16),
                Text(
                  'Item ${index + 1}',
                  style: TextStyle(fontSize: 21),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildImage(String urlImage) => Image.network(
        urlImage,
        //'https://images.unsplash.com/photo-1593642634524-b40b5baae6bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=889&q=80',
        fit: BoxFit.cover,
        width: 100,
        height: 100,
      );
}
