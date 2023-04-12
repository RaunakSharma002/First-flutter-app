import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidgit extends StatelessWidget {
  final Item item;

  const ItemWidgit({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        // leading: ConstrainedBox(
        //   constraints: BoxConstraints(
        //     minWidth: 44,
        //     minHeight: 44,
        //     maxWidth: 64,
        //     maxHeight: 64,
        //   ),
        //   child: Image.network(item.image, fit: BoxFit.cover),
        // ),
        // leading: SizedBox(
        //   height: 100.0,
        //   width: 100.0, // fixed width and height
        //   child: Image.network(item.image),
        // ),
        // leading: CircleAvatar(
        //   backgroundImage: NetworkImage(item.image),
        // ),
        onTap: () {
          print("${item.name} pressed");
        },
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
