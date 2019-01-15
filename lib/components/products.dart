import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopapp/model/Product.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    Product(
      name: "Blazer",
      picture: "assets/images/products/blazer1.jpeg",
      oldPrice: 120.0,
      price: 85.0
    ),
    Product(
        name: "Red dress",
        picture: "assets/images/products/dress1.jpeg",
        oldPrice: 120.0,
        price: 85.0
    ),
//    Product(
//        name: "Blazer",
//        picture: "assets/images/products/blazer2.jpeg",
//        oldPrice: 125.0,
//        price: 95.0
//    ),
//    Product(
//        name: "Red dress",
//        picture: "assets/images/products/dress2.jpeg",
//        oldPrice: 110.0,
//        price: 90.0
//    )
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      itemBuilder: (context, index){
          return SingleProduct(product: productList[index],);
      },

    );
  }
}


class SingleProduct extends StatelessWidget {
  final Product product;
  SingleProduct({
    this.product
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Hero(
            tag: "${product.name}",
            child: Material(
              child: InkWell(
                onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new ProductDetails(
                      product: product,
                    ))),
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: ListTile(
                        leading: Text(product.name,
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        title: Text("\$${product.price}", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),),
                        subtitle: Text("(\$${product.oldPrice})", style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w800, decoration: TextDecoration.lineThrough)),
                      )
                    ),
                  child: Image.asset(
                    product.picture,
                    fit: BoxFit.cover,
                  ),

                ),
              ),
            )
        ),
      ),
    );
  }
}

