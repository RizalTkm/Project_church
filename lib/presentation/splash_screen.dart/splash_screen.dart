import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_church/presentation/controllers/splash_controllers.dart';

import 'package:project_church/presentation/core/constants.dart';
import 'package:project_church/presentation/core/image_url.dart';
import 'package:project_church/presentation/core/theme.dart';

class SplashScreen extends GetWidget<SplashController> {
  SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradinetTheme)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            backgroundColor: Deliverycolors.white,
            radius: 50,
            backgroundImage: const NetworkImage(logoUrl),
            // Padding(
            //   padding: EdgeInsets.all(8),
            //   child: Image(
            //     image: NetworkImage(logoUrl),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          Kheigh10,
          Text(
            'Taste Buds',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
