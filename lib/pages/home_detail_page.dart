// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.cardColor,
      bottomNavigationBar: Container(
        color: MyTheme.darkColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.lightBluishColor),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
              child: "Add to Cart".text.make(),
            ).wh(100, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              height: 30.0,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: MyTheme.darkColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.bold.color(MyTheme.lightColor).make(),
                    catalog.desc.text.lg.make(),
                    10.heightBox,
                    "Invidunt kasd rebum dolores ut dolore consetetur ea. Clita sed dolor sed ut erat magna amet lorem dolor. Aliquyam eirmod sadipscing diam et consetetur justo clita, ea takimata consetetur ea sed, diam ipsum ipsum eirmod lorem, tempor diam ut diam elitr. Clita erat consetetur et kasd. Sed aliquyam stet et."
                        .text
                        .make()
                        .p16(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
