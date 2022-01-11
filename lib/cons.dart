import 'package:flutter/material.dart';
import 'package:zagel_app/models/category_model.dart';
import 'package:zagel_app/models/company_model.dart';
import 'package:zagel_app/models/service_model.dart';
import 'package:zagel_app/widget/CategoryItem.dart';

import 'models/ads_model.dart';

class Cons {
  static List<CategoryModel> categoriesList = [
    new CategoryModel(
        'https://www.almaal.org/wp-content/uploads/2020/02/%D9%83%D9%8A%D9%81-%D8%AA%D8%A8%D8%AF%D8%A3-%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AB%D9%85%D8%A7%D8%B1-%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D8%B1%D9%8A-%D8%A8%D8%B1%D8%A3%D8%B3-%D9%85%D8%A7%D9%84-%D8%B5%D8%BA%D9%8A%D8%B1-2021-%D9%83%D9%8A%D9%81-%D8%AA%D8%A8%D8%AF%D8%A3-%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%AB%D9%85%D8%A7%D8%B1-%D8%A7%D9%84%D8%B9%D9%82%D8%A7%D8%B1%D9%8A-%D8%A8%D8%B1%D8%A3%D8%B3-%D9%85%D8%A7%D9%84-%D8%B5%D8%BA%D9%8A%D8%B1-2021-2.jpg',
        'عقاارت'),
    new CategoryModel('https://cnn-arabic-images.cnn.io'
        '/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2021/03/18/images/180328.jpg',
        'سيارات'),
    new CategoryModel(
        'https://mediaaws.almasryalyoum.com/news/large/2021/03/13/1486052_0.jpg',
        'خدمات'),
    new CategoryModel(
        'https://i2.wp.com/thewriteress.com/wp-content/uploads/2021/02/Channels-for-learning-kids-on-Youtube.jpg?fit=1024%2C667&ssl=1',
        'تعليم'),
    new CategoryModel(
        'https://www.ibta-arabia.com/wp-content/uploads/2018/07/complaint-stamp-1110x550.jpg',
        'شكاوي'),
    new CategoryModel(
        'https://tijaratuna.com/wp-content/uploads/2020/12/%D8%A7%D8%AC%D8%B1%D8%A7%D8%A1%D8%A7%D8%AA-%D8%AA%D8%A3%D8%B3%D9%8A%D8%B3-%D8%B4%D8%B1%D9%83%D8%A9-%D9%85%D9%82%D8%A7%D9%88%D9%84%D8%A7%D8%AA-%D9%81%D9%8A-%D8%A7%D9%84%D8%B9%D8%B1%D8%A7%D9%82-630x300.jpg',
        'مقاولات'),
    new CategoryModel(
        'https://modo3.com/thumbs/fit630x300/128021/1479505579/%D9%83%D9%8A%D9%81%D9%8A%D8%A9_%D8%A7%D9%84%D9%85%D8%AD%D8%A7%D9%81%D8%B8%D8%A9_%D8%B9%D9%84%D9%89_%D8%B5%D8%AD%D8%A9_%D8%A7%D9%84%D8%A5%D9%86%D8%B3%D8%A7%D9%86.jpg',
        'صحة'),
  ];


  static List<AdsModel> adsList = [
    new AdsModel(
        'https://www.nabadv.com/images/joomgallery/details/advertising-photos_2/roads_ads_3_20141229_1725019300.jpg',
        'نستله'),
    new AdsModel(
        'https://mediaphic.com/wp-content/uploads/2021/02/%D8%B5%D9%88%D8%B1%D8%A7%D8%B9%D9%84%D8%A7%D9%86%D8%A7%D8%AA-%D8%A7%D9%86%D8%B3%D8%AA%D9%82%D8%B1%D8%A7%D9%85.png',
        'ميديافيك'),
    new AdsModel(
        'https://mostaql.hsoubcdn.com/uploads/454502-HaGgz-1560473984-5d02f18072a9f.jpg',
        'ديجتال'),
    new AdsModel(
        'https://www.lovely0smile.com/2010/mix/12/the-best-of-ads-on-buildings-01.jpg',
        'لفلي سمايل'),
    new AdsModel('https://i.suar.me/wNVNj/l', 'ابو يزن'),
  ];
  static List<ServiceModel> servicesList = [
    new ServiceModel('https://img.lovepik.com/element/40119/0791.png_300.png',
        'أحمد ابراهيم للتجاره', Color.fromARGB(255, 176, 209, 207)),
    new ServiceModel('https://img.lovepik.com/element/40129/8274.png_300.png',
        'مزرعه علي جاسم', Color.fromARGB(255, 192, 229, 187)),
    new ServiceModel('https://img.lovepik.com/element/40134/5234.png_860.png',
        'ماركو للاحذيه', Color.fromARGB(255, 237, 212, 173)),
    new ServiceModel('https://img.lovepik.com/element/40129/8274.png_300.png',
        'مزرعه علي جاسم', Color.fromARGB(255, 238, 211, 173)),
    new ServiceModel(
        'https://e7.pngegg.com/pngimages/879/310/png-clipart-western-honey-bee-honey-honey-bee-image-file-formats.png',
        'صبيب للعسل', Color.fromARGB(255, 198, 200, 208)),
    new ServiceModel('https://img.lovepik.com/element/40119/0902.png_300.png',
        'صبيب للتجاره', Color.fromARGB(255, 255, 223, 150)),
    new ServiceModel(
        'https://e7.pngegg.com/pngimages/274/920/png-clipart-laptop-macintosh-computer-icons-computers-image-file-formats-computer.png',
        'العصري للكمبيوتر', Color.fromARGB(255, 242, 196, 202)),
    new ServiceModel(
        'https://e7.pngegg.com/pngimages/588/577/png-clipart-taglierini-carbonara-pasta-quarter-restaurant-coffee-lardon-background-border-food-recipe.png',
        'مطعم جاد', Color.fromARGB(255, 255, 222, 149)),
    new ServiceModel(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaH5eegjC-IyW-Zxe7rmc1xYLWv28et9C1wbD5VoBxZTp7KWbnhZQWlVYXUZcGJFLw80M&usqp=CAU',
        'مطعم بيلادو', Color.fromARGB(255, 212, 223, 245,)),
    new ServiceModel(
        'https://png.pngtree.com/png-clipart/20180613/ourmid/pngtree-fashion-car-private-car-orange-red-car-simulation-illustration-png-image_4484916.png',
        'الالفي للسيارات', Color.fromARGB(255, 196, 197, 197)),
    new ServiceModel('https://whatt.cc/wp-content/uploads/2018/08/3502-1.jpg',
        'الاحمد للاخشاب', Color.fromARGB(255, 125, 96, 150)),


  ];
  static List<CompanyModel> companyList = [
    new CompanyModel(
        'https://img.icons8.com/ios/344/ffffff/car--v1.png', 'معارض سيارات',
        Color.fromARGB(255, 162, 24, 39)),
    new CompanyModel(
        'https://img.icons8.com/external-vitaliy-gorbachev-fill-vitaly-gorbachev/344/ffffff/external-building-landscape-vitaliy-gorbachev-fill-vitaly-gorbachev.png',
        'عقاريون', Color.fromARGB(255, 153, 164, 170)),
    new CompanyModel(
        'https://img.icons8.com/external-those-icons-lineal-those-icons/344/ffffff/external-lamp-camping-hiking-those-icons-lineal-those-icons.png',
        'منوعات', Color.fromARGB(255, 217, 173, 100)),
    //  new CompanyModel('https://img.icons8.com/ios/344/ffffff/car--v1.png', 'معارض سيارات', Color.fromARGB(255,162,24,39)),
    new CompanyModel(
        'https://img.icons8.com/ios/344/ffffff/services--v1.png', 'خدمات',
        Color.fromARGB(255, 125, 96, 150)),
  ];


  static List<String> images = [
    'assets/images/store1.png',
    'assets/images/store2.png',
    'assets/images/store3.png',
    'assets/images/store4.png'];


  static Color primary_color = Colors.white;
  static Color accent_color = Colors.white;


  static void buildColors(BuildContext ctx) {
    primary_color = Theme
        .of(ctx)
        .primaryColor;
    accent_color = Theme
        .of(ctx)
        .accentColor;
  }
//stic Widget getAppbar(String title);


}