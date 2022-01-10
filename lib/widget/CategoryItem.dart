import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category.dart';

class CategoryItem extends StatelessWidget {
  // Category item;
  //
  //
  // CategoryItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Container(
             padding: EdgeInsets.all(8),
             child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'https://api.time.com/wp-content/uploads/2019/08/better-smartphone-photos.jpg'
                 ,
                  height: 90.0,
                  width: 80.0,
                    fit: BoxFit.cover
                ),

              ),
           ),
          SizedBox(height: 10,),
          Center(child: Text('name',style: TextStyle(fontSize: 10),),)
        ],

      ),
    );
  }
}
