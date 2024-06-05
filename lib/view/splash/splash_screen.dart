import 'package:flutter/material.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view_model/services/splash_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashServices.getApiData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(ImageAssets.nightRain,height: 100,width: 100,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Weather App",style: TextStyle(fontSize: 25.0),),
            )
          ],
        ),
      ),
    );
  }
}
