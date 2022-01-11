import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/ads_model.dart';
import 'package:zagel_app/models/category_model.dart';

class AdsItem extends StatelessWidget {
 AdsModel model;

 AdsItem(this.model);

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
                       model.image
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
                        color: Color.fromARGB(255, 125,95,149),
                        child: Center(child: Text(model.name,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w200),),),
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
