import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category.dart';

class CompanyItem extends StatelessWidget {
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
            margin: EdgeInsets.all(10),
              height: 120.0,
              width: 200.0,
            padding: EdgeInsets.all(8),
            decoration:BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_android,size: 50,),
                // Image.network( 'https://api.time.com/wp-content/uploads/2019/08/better-smartphone-photos.jpg',
                //     height: 40.0,
                //     width: 40.0,
                //     fit: BoxFit.cover),
                Center(child: Text('name',style: TextStyle(fontSize: 20),),)
              ],
            )
          ),
          SizedBox(height: 10,),
         
        ],

      ),
    );
  }
}
