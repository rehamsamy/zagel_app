import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zagel_app/models/category_model.dart';
import 'package:zagel_app/models/company_model.dart';

class CompanyItem extends StatelessWidget {
  CompanyModel model;

  CompanyItem(this.model);

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
              color: model.color,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               // Icon(Icons.phone_android,size: 50,),
                Image.network( model.image,
                    height: 40.0,
                    width: 40.0,
                    fit: BoxFit.cover),
                Center(child: Text(model.name,style: TextStyle(fontSize: 20,color: Colors.white),),)
              ],
            )
          ),
          SizedBox(height: 10,),
         
        ],

      ),
    );
  }
}
