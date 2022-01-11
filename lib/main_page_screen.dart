import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zagel_app/models/category_model.dart';
import 'package:zagel_app/my_flutter_app_icons.dart';
import 'package:zagel_app/widget/AdsItem.dart';
import 'package:zagel_app/widget/CategoryItem.dart';
import 'package:zagel_app/widget/CompanyItem.dart';
import 'package:zagel_app/widget/app_drawer.dart';
import 'package:zagel_app/widget/service_item.dart';

import 'cons.dart';
import 'controller/product_controller.dart';


class MainPageScreen extends StatefulWidget {
  static String route='/main';

  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  CarouselController buttonCarouselController = CarouselController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index=0;
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.bottom,
    //   SystemUiOverlay.top
    // ]);

   // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        key: _scaffoldKey,
        body:CustomScrollView(
            slivers: [
              buildAppBar(context),

              // buildAppBar(context),
              SliverList(delegate: SliverChildListDelegate(
                  [
                    buildListTileLabel(' الاقسام ','المزيد',Icons.category_outlined),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (_,inx)=>
                            CategoryItem(Cons.categoriesList[inx]),
                        itemCount: Cons.categoriesList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    buildListTileLabel('دليلك لاهم الشركات','المزيد',Icons.commute),
                    Container(
                      height: 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (_,inx)=>
                            CompanyItem(Cons.companyList[inx]),
                        itemCount: Cons.companyList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    buildListTileLabel('الاعلانات المبوبه','المزيد',Icons.ac_unit),
                    Container(
                      height: 240,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (_,inx)=>
                            AdsItem(Cons.adsList[inx]),
                        itemCount: Cons.adsList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    buildListTileLabel('خدمات مميزة','المزيد',Icons.miscellaneous_services),
                    Container(
                      height: 480,
                        child: GridView.count(
                          scrollDirection: Axis.horizontal,
                            crossAxisCount:  3,
                            childAspectRatio:1.1,
                            //padding: const EdgeInsets.all(4.0),
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 0,
                            children: Cons.servicesList
                          .map((e) => Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ServiceItem(e),
                              ))
                          .toList())
                      // GridView(
                      //   children:
                      //   Cons.servicesList.map((e) => Padding(
                      //     padding: const EdgeInsets.all(8.0),
                      //     child: ServiceItem(e),
                      //   )).toList()
                      //   ,
                      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //     childAspectRatio: 5/4,
                      //    mainAxisExtent: 3,
                      //     crossAxisCount: Cons.servicesList.length,
                      //     mainAxisSpacing: 10,
                      //     crossAxisSpacing: 10,
                      //   ),
                      //
                      //
                      // ),
                    )


                    ,buildCaroselSlider(),
                    SizedBox(height: 20,),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add_a_photo_outlined,size: 30,color: Colors.blue.shade200,),
                        Icon(Icons.accessibility_new_sharp,size: 30,color: Colors.purple,),
                        Icon(Icons.email,size: 30,color: Colors.orange,),
                        Icon(Icons.facebook,size: 30,color: Colors.blue.shade700,),
                      ],),
                    SizedBox(height: 20,),
                  ]

              ),
              ),
            ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar: Container(
          height: 65,
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 2),
          child: BottomAppBar(
              child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.notification_important_rounded),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ]
              ),
              color: Colors.blueGrey,
              shape: AutomaticNotchedShape(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    )),
              )),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () { },
          tooltip: 'Increment',
          child: Icon(Icons.add,),
          elevation: 10,
        ),
        endDrawer: MyDrawer(),
      ),
    );
  }




  Widget buildAppBar(BuildContext context){
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height*0.4,
          pinned: false,
          floating: false,
          centerTitle: true,
          automaticallyImplyLeading: false,
          flexibleSpace:  GetBuilder<ProductController>(
            builder: (_)=>
                FlexibleSpaceBar(
                    titlePadding: EdgeInsets.all(5)
                    , background: LayoutBuilder(
                  builder: (ctx,cons)=>
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            height: cons.maxHeight*0.19,
                            color: Colors.white,
                            child:
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceAround,
                                children: [
                                CircleAvatar(
                                          radius: 40,
                                          backgroundImage:AssetImage('assets/images/store1.png'),
                                    ),
                                 Text('Zagel',style: TextStyle(fontSize: 20,color: Cons.primary_color),),
                                IconButton(icon:Icon(Icons.padding),color: Colors.white,
                                onPressed: () => Scaffold.of(ctx).hasEndDrawer,)

                              ],)
                          ),
                          Container(
                            color: Colors.grey.shade50,
                            height: cons.maxHeight*0.24,
                           padding: EdgeInsets.all(10),
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                  hintText: 'بحث',
                                  suffixIcon:Icon( Icons.search)),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey.shade50,
                            height: cons.maxHeight*0.45,
                            width: double.infinity,
                            child:builderSliderImageAppbar() ,
                          ),
                  Container(
                    color: Colors.grey.shade50,
                    height: cons.maxHeight*0.1,
                    //color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildCircleSlider(0),
                        buildCircleSlider(1),
                        buildCircleSlider(2),
                        buildCircleSlider(3),
                      ],
                    ),
                  ),

                //           Hero(
                //   tag: 'product.id',
                //   child: Image.asset('assets/images/store1.png',fit: BoxFit.cover,),
                // ),
                        ],
                      ),
                    )
                ),
          )),
    );

  }



Widget buildListTileLabel(String txt1,String txt2,IconData iconData){
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        txt1,
        textDirection: TextDirection.rtl,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      trailing: Text(txt2),
    );
  }

  buildCaroselSlider() {
   return CarouselSlider(
      carouselController: buttonCarouselController,
      options: CarouselOptions(
          onPageChanged: (ind,x){
            setState(() {
              index=ind;
            });
          },
          initialPage: 1,
          autoPlayAnimationDuration: Duration(milliseconds: 300),
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 6/4,
          viewportFraction: 0.9
      ),
      items: Cons.images.map((e) =>
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(e),
          )
      ).toList(),
    );
  }

  builderSliderImageAppbar() {
    return  CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
            onPageChanged: (ind,x){
              setState(() {
                index=ind;
              });
            },
            initialPage: 1,
            autoPlayAnimationDuration: Duration(milliseconds: 400),
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            viewportFraction: 0.5
        ),
        items: Cons.images.map((e) =>
            Image.asset(e,fit: BoxFit.cover,)
        ).toList(),
    );
  }


  Widget buildCircleSlider(int ind){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
         // borderRadius: BorderRadius.circular(30),
           border:ind==index? Border.all(width:2,color:Colors.red ):Border.all(width:1,color:Colors.green ),
            shape: BoxShape.circle,
            color:ind==index?Colors.white:Colors.red
        ),
      ),
    );
  }

}

