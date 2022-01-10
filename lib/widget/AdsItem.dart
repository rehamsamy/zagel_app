import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category.dart';

class AdsItem extends StatelessWidget {
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
              height: 200.0,
              width: 300.0,
             // padding: EdgeInsets.all(8),
              decoration:BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                        'https://api.time.com/wp-content/uploads/2019/08/better-smartphone-photos.jpg'
                        ,
                        height: 200.0,
                        width: 300.0,
                        fit: BoxFit.cover
                    ),

                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
                      child:Container(
                        width: 300,
                        height: 50,
                        color: Colors.deepPurple,
                        child: Center(child: Text('Hello',style: TextStyle(color: Colors.white),),),
                      ),

                    ),
                  )
                ],
              )
          ),
          SizedBox(height: 10,),

        ],

      ),
    );
  }
}
