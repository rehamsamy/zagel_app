import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel model;


  CategoryItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Container(
             padding: EdgeInsets.all(8),
             child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),

              child:  Image.network(
                 // 'https://api.time.com/wp-content/uploads/2019/08/better-smartphone-photos.jpg'
                  model.image
                 ,
                  height: 90.0,
                  width: 90.0,
                    fit: BoxFit.cover
                ),

              ),
           ),
         // SizedBox(height: 5,),
          Center(child: Text(model.name,style: TextStyle(fontSize: 15,color: Colors.black),),)
        ],

      ),
    );
  }
}
