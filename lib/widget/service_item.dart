import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category.dart';

class ServiceItem extends StatelessWidget {
  // Category item;
  //
  //
  // CategoryItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Column(
          children: [
            Container(
                height: 120.0,
                width: 180.0,
               padding: EdgeInsets.all(8),
                decoration:BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(child: Text('name',style: TextStyle(fontSize: 20),),),
                    Icon(Icons.phone_android,size: 50,),
                    // Image.network( 'https://api.time.com/wp-content/uploads/2019/08/better-smartphone-photos.jpg',
                    //     height: 40.0,
                    //     width: 40.0,
                    //     fit: BoxFit.cover),

                  ],
                )
            ),


          ],

        ),
      ),
    );
  }
}
