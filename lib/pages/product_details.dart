import 'package:flutter/material.dart';
import 'package:shopapp/model/Product.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  ProductDetails({this.product});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product.picture,),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\$${widget.product.oldPrice}',
                          style: TextStyle(
                            color: Colors.grey,
                              decoration: TextDecoration.lineThrough
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                            '\$${widget.product.price}',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
//              Size dropdown
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text("Close"),
                            )
                          ],
                        );
                      }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
//              Color dropdown
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Color"),
                            content: new Text("Choose the color"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
//              Quantity dropdown
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: new Text("Choose the quantity"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              )
                            ],
                          );
                        }
                    );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color:Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.red,
                ),
                onPressed: (){
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                onPressed: (){
                },
              )
            ],
          ),
          ListTile(
            title: Text("Product details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          ),
          Divider(),

        ],
      ),
    );
  }
}

