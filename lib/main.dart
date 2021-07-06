import 'package:consumindo_api/views/Home/Dio/user_dio_bindings.dart';
import 'package:consumindo_api/views/Home/Dio/user_dio_view.dart';
import 'package:consumindo_api/views/Home/Http/http_bindings.dart';
import 'package:consumindo_api/views/Home/Http/http_view.dart';
import 'package:consumindo_api/views/Home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          name: '/', 
          page: () => HomeView(),
          children: [
            GetPage(
              name: '/http', 
              page: () => HttpView(),
              binding: HttpBindings()
            ),
            GetPage(
              name: '/dio', 
              page: () => UserDioView(),
              binding: UserDioBindings()
            )
          ]
        )
      ],
    );
  }
}