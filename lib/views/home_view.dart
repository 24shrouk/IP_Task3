import 'package:flutter/material.dart';
import 'package:task3/utils/list_prodects.dart';
import 'package:task3/views/favorite_view.dart';
import 'package:task3/widgets/product_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 121, 65, 44),
        title: const Text(
          'E - Commerce Shop',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoriteScreen()));
              },
              icon: const Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductCard(
            product: MyProducts.allProducts[index],
          );
        },
        itemCount: MyProducts.allProducts.length,
      ),
    );
  }
}
