import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopapp/components/horizontal_listview.dart';
import 'package:shopapp/components/products.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    var image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images:[
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
        ],
        dotSize: 4.0,
        autoplay: false,
        indicatorBgPadding: 2.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 300),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed:(){},),
          IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed:(){},),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Riad"),
              accountEmail: Text("riad@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home,),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("My account"),
              leading: Icon(Icons.person),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("My orders"),
              leading: Icon(Icons.shopping_basket),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.category),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("Favourites"),
              leading: Icon(Icons.favorite),
              onTap: (){

              },
            ),
            Divider(),

            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.help),
              onTap: (){

              },
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          SizedBox(height: 10.0, width: 0.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories", style: TextStyle(fontSize: 16.0),),
          ),
          SizedBox(height: 10.0, width: 0.0,),
          HorizontalList(),
          SizedBox(height: 10.0, width: 0.0,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent products", style: TextStyle(fontSize: 16.0),),
          ),
          SizedBox(height: 10.0, width: 0.0,),
          Container(
            height: 320.0,
            child: Products(),
          )
          
        ],
      ),
    );
  }
}

