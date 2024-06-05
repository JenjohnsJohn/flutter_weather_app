import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/res/images/image_assets.dart';
import 'package:weather/view/home/components/container_list.dart';
import 'package:weather/view/home/components/hours_list.dart';
import 'package:weather/view/home/components/info_card.dart';
import 'package:weather/view/home/components/location.dart';
import 'package:weather/view/home/components/search_bar.dart';
import 'package:weather/view_model/controllers/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        actions: [
          Row(
            children: [
              
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  ImageAssets.nightRain,
                  height: 30,
                  width: 30,
                ),
              )
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Center(
              child: Image.asset(
                    ImageAssets.umbrella
                  ),
            )),
            ListTile(title: Text("Home",),leading: Icon(Icons.home),),
            ListTile(title: Text("About"),leading: Icon(Icons.edit_document),),
            ListTile(title: Text("Help"),leading: Icon(Icons.help),),
            ListTile(title: Text("Contact"),leading: Icon(Icons.contact_mail),),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                PlaceSearchBar(),
                Location(),
                ContainerList(),
                Hero(
                    tag: 'TAG',
                    child:
                        Material(color: Colors.transparent, child: InfoCard())),
                
                
                HoursList(),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   controller.place.value = controller.place.value == "Kollam" ? "Kerala" :"Kollam";
      //   controller.getData();
      //   controller.currentIndex.value = 0;
      //   print("Clicked");
      // },child: Icon(Icons.location_city),),
    );
  }
}
