import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Text("Catalog App"), same as below
      // "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
      "Catalog App".text.xl5.bold.color(context.theme.buttonColor).make(),
      "Trending Product".text.xl2.make()
    ]);
  }
}
