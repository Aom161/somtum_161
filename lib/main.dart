import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:somtum_161/page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(255, 235, 50, 17),
            background: Color.fromARGB(255, 238, 194, 113)),
        useMaterial3: true,
      ),
      home: FlutterSplashScreen.scale(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 236, 192, 96),
            Color.fromARGB(255, 228, 123, 123),
          ],
        ),
        childWidget: SizedBox(
          height: 1024, // เพิ่มความสูงของรูปภาพ
          width: 1024, // เพิ่มความกว้างของรูปภาพ
          child: Image.asset("assets/images/logoo.png"),
        ),
        duration: const Duration(milliseconds: 1500),
        animationDuration: const Duration(milliseconds: 1000),
        onAnimationEnd: () => debugPrint("On Scale End"),
        nextScreen: const LoginScreen(),
      ),
    );
  }
}
