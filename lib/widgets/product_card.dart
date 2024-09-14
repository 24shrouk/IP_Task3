import 'package:flutter/material.dart';
import 'package:task3/models/prodect_model.dart';
import 'package:task3/providers/favorite_provider.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => provider.toggleFavorite(widget.product),
                    child: Icon(
                      provider.isExist(widget.product)
                          ? Icons.add_shopping_cart
                          : Icons.add_shopping_cart_outlined,
                      color: provider.isExist(widget.product)
                          ? const Color.fromARGB(255, 121, 65, 44)
                          : const Color.fromARGB(255, 132, 132, 132),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 130,
              width: 130,
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.product.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.product.category,
              style: const TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 121, 65, 44)),
            ),
            Text(
              '\$' '${widget.product.price}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
