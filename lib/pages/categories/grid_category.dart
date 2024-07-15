import 'package:flutter/material.dart';

class GridCategory extends StatefulWidget {
  const GridCategory({super.key});

  @override
  State<GridCategory> createState() => _GridCategoryState();
}

class _GridCategoryState extends State<GridCategory> {

  //temporary List of category
  final List<Map<String, dynamic>> categories = [
    {
      'image': "assets/images/category_page/new_arrival.png",
    },
    {
      'image': "assets/images/category_page/cloth.png",
    },
    {
      'image': "assets/images/category_page/bags.png",
    },
    {
      'image': "assets/images/category_page/shoes.png",
    },
    {
      'image': "assets/images/category_page/electronics.png",
    },
    {
      'image': "assets/images/category_page/jewelry.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            //search bar container
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Categories",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            //grid view for category
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // number of items in each row
                mainAxisSpacing: 15.0, // spacing between rows
                crossAxisSpacing: 15.0, // spacing between columns
              ),
              shrinkWrap: true,
              padding: EdgeInsets.all(8.0), // padding around the grid
              itemCount: categories.length, // total number of items
              itemBuilder: (context, index) {
                final category = categories[index];
                return Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(category['image']),
                          fit: BoxFit.cover),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
