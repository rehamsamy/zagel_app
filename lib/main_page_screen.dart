import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zagel_app/models/category.dart';
import 'package:zagel_app/widget/AdsItem.dart';
import 'package:zagel_app/widget/CategoryItem.dart';
import 'package:zagel_app/widget/CompanyItem.dart';
import 'package:zagel_app/widget/service_item.dart';

import 'controller/product_controller.dart';

class MainPageScreen extends StatelessWidget {
  static String route='/main';
  List<Category> list=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:CustomScrollView(
            slivers: [
        SliverAppBar(
        expandedHeight: MediaQuery.of(context).size.height*0.4,
        pinned: true,
        floating: true,
        centerTitle: true,
        automaticallyImplyLeading: false,
            flexibleSpace:AppBar(
              title: Text('123'),
            )
        ),
     // buildAppBar(context),
      SliverList(delegate: SliverChildListDelegate(
            [
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
            itemBuilder: (_,inx)=>
        CategoryItem(),
          itemCount: 5,
                  scrollDirection: Axis.horizontal,
       ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (_,inx)=>
                      CompanyItem(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                height: 240,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (_,inx)=>
                      AdsItem(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                height: 500,
                child: GridView.builder(
                  itemBuilder: (_,inx)=>
                      ServiceItem(),
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 0,
                      childAspectRatio: 8 / 9,
                      crossAxisCount: 3),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.facebook),
                  Icon(Icons.photo_camera),
                  Icon(Icons.email),
                  Icon(Icons.person),
              ],),
              SizedBox(height: 800,),
              Text('jjjjj')
            ]

    ),
      ) ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label:'ddd',icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'ddd',icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:'ddd',icon: Icon(Icons.home)),
        ],
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }


  // Widget buildAppBar(BuildContext context,Product product,String _prodType){
  //   return  SliverAppBar(
  //       expandedHeight: MediaQuery.of(context).size.height*0.4,
  //       pinned: true,
  //       floating: true,
  //       centerTitle: true,
  //       automaticallyImplyLeading: false,
  //       flexibleSpace:  GetBuilder<ProductController>(
  //         builder: (_)=>
  //             FlexibleSpaceBar(
  //                 titlePadding: EdgeInsets.all(5),
  //                 centerTitle: true,
  //                 title: _prodType==null ||_prodType=='fav'?
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     IconButton(onPressed: (){
  //                       Navigator.of(context).pop();
  //                     }, icon: Icon(Icons.arrow_back,color: Cons.accent_color,size: 30)),
  //                    // Text(product.name, style: Cons.greyFont1),
  //                     IconButton(onPressed: ()async{
  //                       print('pppp');
  //                       // if(product.isFav==1){
  //                       //   await  toogleFav(0, product.id,product);
  //                       // }else{
  //                       //   await toogleFav(1, product.id,product);
  //                       // }
  //                       // _productController.changeFavoriteFlag(product.isFav);
  //                     }, icon: Icon(product.isFav==1?Icons.favorite:Icons.favorite_border,color: Colors.red,size: 30,)),
  //                   ],
  //                 ):
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: [
  //                     Flexible(
  //                       flex: 1,
  //                       child: IconButton(onPressed: (){
  //                         Navigator.of(context).pop();
  //                       }, icon: Icon(Icons.arrow_back,color: Cons.accent_color,size: 25)),
  //                     ),
  //                     Flexible(
  //                       flex: 1,
  //                       child: IconButton(onPressed: ()async{
  //                         print('ppppp');
  //                         // if(product.isFav==1){
  //                         //   await toogleFav(0, product.id,product);
  //                         // }else{
  //                         //   await toogleFav(1, product.id,product);
  //                         // }
  //                         // _productController.changeFavoriteFlag(product.isFav);
  //                         // _productController.update();
  //                       }, icon: Icon(product.isFav==1?Icons.favorite:Icons.favorite_border,color: Colors.red,size: 25)),
  //                     ),
  //                     Padding(
  //                         padding:EdgeInsets.only(left: 10,right: 10),child: Text(product.name, style: TextStyle(fontSize: 18,color: Colors.black54))),
  //                     Flexible(
  //                         flex:1,child: IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Cons.accent_color,size: 25))),
  //                     Flexible(
  //                         flex:1,child: IconButton(onPressed: (){
  //                    //   Navigator.of(context).pushNamed(CreateProductScreen.CREATE_PRODUCT_ROUTE,arguments: product);
  //                     }, icon: Icon(Icons.edit,color: Cons.accent_color,size: 25))),
  //
  //                   ],
  //                 ), background: Hero(
  //               tag: product.id,
  //               child: FadeInImage(
  //                 image: NetworkImage(product.images[0],scale: 3),
  //                 // Image.network(product.images[0],),
  //                 placeholder: AssetImage('assets/images/watch_item1.png'),
  //                 fit: BoxFit.cover,
  //               ),
  //             )
  //             ),
  //       ));
  //
  // }



}
