import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:start_tech_task/utils/dio_utils/dio_utils.dart';
import 'package:start_tech_task/utils/shared_preferences/cashe_helper.dart';
import 'package:start_tech_task/view/home_page/home_page_view.dart';
import 'package:start_tech_task/view/intro/intro_view.dart';
import 'package:start_tech_task/view/splash/splash_view.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  DioUtils.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        useMaterial3: true,
      ),
      home: SplashView(),
    );
  }
}


