import 'package:katalog/models/product.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key, required this.cart});
  final Map<int, int> cart;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Panier')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE0E7FF), Color(0xFFFFFFFF)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: widget.cart.entries.map((entry) {
                          final product = demoProducts.firstWhere(
                            (p) => p.id == entry.key,
                          );
                          final quantity = entry.value;
                          return ListTile(
                            leading: Image.network(product.imageUrl),
                            title: Text(product.name),
                            subtitle: Text('Quantité : $quantity'),
                            trailing: Text(
                              '${(product.price * quantity).toStringAsFixed(2)} €',
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${widget.cart.entries.fold(0.0, (total, entry) {
                              final product = demoProducts.firstWhere((p) => p.id == entry.key);
                              return total + (product.price * entry.value);
                            }).toStringAsFixed(2)} €',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Handle checkout action
                      },
                      child: const Text('Passer à la caisse'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
