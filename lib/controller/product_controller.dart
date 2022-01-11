import 'package:get/get.dart';

class ProductController extends GetxController{
  int index=0;
  changeIndex(var ind){
    index=ind;
    update();
  }

}