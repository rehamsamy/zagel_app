import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category_model.dart';
import 'package:zagel_app/models/service_model.dart';

class ServiceItem extends StatelessWidget {
ServiceModel model;
ServiceItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        child: Column(
          children: [
            Container(
                height: 150.0,
                width: 200.0,
               padding: EdgeInsets.all(8),
                decoration:BoxDecoration(
                    color: model.color,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network( model.image,
                        height: 20.0,
                        width: 20.0,
                        fit: BoxFit.contain),
                    Center(child: Text(model.name,style: TextStyle(fontSize: 10),),),
                   // Icon(Icons.phone_android,size: 50,),
                  ],
                )
            ),


          ],

        ),
      ),
    );
  }
}
