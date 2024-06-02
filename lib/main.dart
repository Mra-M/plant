import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_app/controller/plant_controller.dart';
import 'package:plant_app/view/cart_view.dart';
import 'package:plant_app/view/details_view.dart';
import 'package:plant_app/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: BindingsBuilder(() {
        Get.put(PlantController());
      }),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeView(),
        ),
        GetPage(
          name: '/details',
          page: () => DetailsView(),
        ),
        GetPage(
          name: '/cart',
          page: () => CartView(),
        ),
      ],
    );
  }
}
