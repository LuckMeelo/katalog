import 'package:katalog/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int numberOfItems = 1;

  @override
  Widget build(BuildContext context) {
    final p = widget.product;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(p.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          AspectRatio(
            aspectRatio: 16 / 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(p.imageUrl, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 16),
          Text(p.name, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 4),
          Text(p.category, style: TextStyle(color: scheme.primary)),
          const SizedBox(height: 8),
          Text(p.description),
          const SizedBox(height: 16),
          // Select Number of items (Do not go below 1)
          Row(
            children: [
              const Text('Quantité :'),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {
                  if (numberOfItems > 1) {
                    setState(() => numberOfItems--);
                  }
                },
                icon: const Icon(Icons.remove),
              ),
              Text('$numberOfItems', style: const TextStyle(fontSize: 16)),
              IconButton(
                onPressed: () => setState(() => numberOfItems++),
                icon: const Icon(Icons.add),
              ),
              const Spacer(),
              Text(
                '${(p.price * numberOfItems).toStringAsFixed(2)} €',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              // return number of items to previous page
              Navigator.of(context).pop(numberOfItems);
            },
            icon: const Icon(Icons.add_shopping_cart),
            label: const Text('Ajouter au panier'),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
