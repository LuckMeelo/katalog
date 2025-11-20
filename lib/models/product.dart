class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final DateTime createdAt; // = DateTime.now();

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();
}

//données de démo
final demoProducts = <Product>[
  Product(
    id: 1,
    name: 'Pixel 10',
    description: 'Google Pixel 10',
    price: 890,
    imageUrl: 'https://cdn.mos.cms.futurecdn.net/P2VuWjwLCiqD338ULfskKe.jpg',
    category: 'Smartphone',
  ),
  Product(
    id: 2,
    name: 'Iphone 17',
    description: 'Apple iphone 17',
    price: 1890,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCscF7v64OQfBzzS_OysdRZ3AxTXW-rMd5A&s',
    category: 'Smartphone',
  ),
  Product(
    id: 3,
    name: 'Z flip 7',
    description: 'Samsung Galaxy Z flip 7',
    price: 590,
    imageUrl:
        'https://media.ldlc.com/r1600/ld/products/00/06/25/92/LD0006259235.jpg',
    category: 'Smartphone',
  ),
  Product(
    id: 4,
    name: 'MacBook Pro 14',
    description: 'Apple M3 Pro, 16GB RAM, 512GB SSD',
    price: 2499,
    imageUrl:
        'https://www.achatmoinscher.com/photoProd/zoom/541/macbook-pro-14-2021-puce-apple-m1-pro-ram-16go-sto-157905279.jpg',
    category: 'Laptop',
  ),
  Product(
    id: 5,
    name: 'Sony WH-1000XM5',
    description: 'Casque à réduction de bruit sans fil',
    price: 349,
    imageUrl:
        'https://static.fnac-static.com/multimedia/Images/FR/MDM/24/24/8d/26027044/1540-1/tsp20250904153718/Casque-audio-arceau-sans-fil-Sony-WH1000XM5-rose-a-reduction-de-bruit.jpg',
    category: 'Audio',
  ),
  Product(
    id: 6,
    name: 'iPad Pro 13',
    description: 'Apple M4, 256GB, Wi-Fi',
    price: 1299,
    imageUrl:
        'https://media.rueducommerce.fr/r500/rd/products/de1/de155ac38c5e3196da4eb0111828b0dd4f0c1134.jpg',
    category: 'Tablet',
  ),
];
