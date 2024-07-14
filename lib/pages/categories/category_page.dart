import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<Map<String, dynamic>> categories = [
    {
      'icon': Icons.shopping_cart,
      'title': 'New Arrivals',
      'productCount': 208,
    },
    {
      'icon': Icons.account_circle,
      'title': 'Clothes',
      'productCount': 358,
    },
    {
      'icon': Icons.shopping_bag,
      'title': 'Bags',
      'productCount': 160,
    },
    {
      'icon': Icons.shop,
      'title': 'Shoes',
      'productCount': 230,
    },
    {
      'icon': Icons.settings_input_component,
      'title': 'Electronics',
      'productCount': 130,
    },
    {
      'icon': Icons.diamond,
      'title': 'Jewelry',
      'productCount': 87,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))]),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Categories",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      leading: Icon(category['icon']),
                      title: Text(category['title']),
                      trailing: Text('${category['productCount']} Product'),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
