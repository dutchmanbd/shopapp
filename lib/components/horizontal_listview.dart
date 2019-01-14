import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(url: "assets/images/cats/tshirt.png", caption: "Shirt",),
          Category(url: "assets/images/cats/dress.png", caption: "Dress",),
          Category(url: "assets/images/cats/jeans.png", caption: "Jeans",),
          Category(url: "assets/images/cats/formal.png", caption: "Formal",),
          Category(url: "assets/images/cats/informal.png", caption: "Informal",),
          Category(url: "assets/images/cats/shoe.png", caption: "Shoe",),
          Category(url: "assets/images/cats/accessories.png", caption: "Others",),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String url;
  final String caption;
  Category({this.url, this.caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Image.asset(url, height: 80.0, width: 80.0,),
              SizedBox(height: 10.0,),
              Text(caption, textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}

