import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


import 'cons.dart';
import 'controller/product_controller.dart';
import 'main_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller1 = Get.put(ProductController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    Cons.buildColors(context);
    //int x=5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color.fromARGB(255,213,177,57),
          unselectedWidgetColor: Color.fromARGB(255,123,196,229),
          // rgba(228,190,55,255)
        //  accentColor: Color.fromARGB(255,123,196,229),
          accentColor: Colors.orange,
          canvasColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              centerTitle: true,
              foregroundColor: Colors.grey.shade300,
              brightness: Brightness.light,
              iconTheme: IconThemeData(
                  color: Theme.of(context).accentColor
              )
          )

      ),
      home: MainPageScreen(),
      // routes: {
      //   MainPageScreen.route:(_)=>MainPageScreen(),
      //
      // },
    );
  }
}