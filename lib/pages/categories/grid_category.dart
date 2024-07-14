import 'package:flutter/material.dart';

class GridCategory extends StatefulWidget {
  const GridCategory({super.key});

  @override
  State<GridCategory> createState() => _GridCategoryState();
}

class _GridCategoryState extends State<GridCategory> {
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
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: EdgeInsets.only(top: 20.0),
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              children: List.generate(6, (index) {
                return Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/category_page/bags.png",
                          ),
                          fit: BoxFit.cover),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12)),
                  child: Container()
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
