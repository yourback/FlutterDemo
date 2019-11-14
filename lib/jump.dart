import 'package:flutter/material.dart';

// 商品类
class Product {
  String title;
  String description;

  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: '例子',
    home:
        ProductList(List.generate(20, (i) => Product("商品$i", "这是一个商品，标号为 $i"))),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> list;

  ProductList(this.list);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductDetail(list[index])));
            },
            title: Text(list[index].title),
          );
        },
        itemCount: list.length,
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  Product pro;

  ProductDetail(this.pro);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(pro.title),
      ),
      body: Center(
        child: Text(pro.description),
      ),
    );
  }
}
