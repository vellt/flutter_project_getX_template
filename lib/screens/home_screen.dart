import 'package:flutter/material.dart';
import 'package:flutter_project_getx_template/controllers/home_screen_controller.dart';
import 'package:flutter_project_getx_template/global.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GetBuilder<HomeScreenController>(
              init: homeScreenController,
              builder: (controller) {
                return Text(controller.szamlalo.toString());
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeScreenController.novelo();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
