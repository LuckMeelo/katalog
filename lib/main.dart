import 'package:katalog/models/product.dart';
import 'package:katalog/pages/cart_page.dart';
import 'package:katalog/pages/catalog_page.dart';
import 'package:katalog/pages/product_detail_page.dart';
import 'package:katalog/pages/profil_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Catalogue',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4F46E5)),
        useMaterial3: true,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1E293B),
          ),
          bodyMedium: TextStyle(color: Color(0xFF1E293B)),
        ),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const CatalogPage());
          case '/detail':
            final product = settings.arguments as Product;
            return MaterialPageRoute(
              builder: (_) => ProductDetailPage(product: product),
            );
          case '/cart':
            final cart = settings.arguments as Map<int, int>;
            return MaterialPageRoute(builder: (_) => CartPage(cart: cart));
          case '/about':
            return MaterialPageRoute(builder: (_) => const ProfilPage());
          default:
            return null;
        }
      },
    );
  }
}
