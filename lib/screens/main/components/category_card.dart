
import 'package:flutter/material.dart';

import '../../../models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.all(Radius.circular(30))
      // ),
      child: Card(
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
          elevation: 5,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 90,
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        category.category,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        gradient: RadialGradient(
                            colors: [category.begin, category.end],
                            center: Alignment(0, 0),
                            radius: 0.8,
                            focal: Alignment(0, 0),
                            focalRadius: 0.1)),
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(category.image),
                    ),
                  )
                ],
              ),


        ),
    );
  }
}
