import 'package:consumindo_api/models/user_model.dart';
import 'package:consumindo_api/views/Home/Http/http_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HttpView extends GetView<HttpController> {
  const HttpView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumindo via HTTP"),
      ),
      body: controller.obx((state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return Container(
                padding: EdgeInsets.all(8),
                width: double.infinity,
                height: 100,
                child: Row(
                    children: [
                      Image.network(item.avatar, width: 80,),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
                          Text(item.email, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
                        ],
                      ),
                    ],
                  ),
              );
              
            },
          ),
        );
      },
      onError: (error) {
        return Center(child: Text(error!),);
      }),
    );
  }
}