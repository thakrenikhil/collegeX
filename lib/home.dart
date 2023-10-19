import 'package:collegex/widgets/slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:collegex/widgets/drawer.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title:const Image(image: AssetImage('assets/svg/logo_main.svg')),
      centerTitle: true,
      // leading: IconButton(icon: Icon(Icons.menu),onPressed:MainDrawer()),
      actions: [
        IconButton(icon: const Icon(Icons.more_vert),onPressed:(){}),
      ],
    ),
      body:const SliderScreen(),
      drawer: const MainDrawer(),
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          color: Colors.white,
          animationDuration: const Duration(
            milliseconds: 150,),
          animationCurve: Curves.decelerate,
          buttonBackgroundColor: Colors.yellow,
          onTap: (index){
      },
          items: const [
            Icon(Icons.home,),
            Icon(Icons.app_registration),
            Icon(Icons.people),
            Icon(Icons.work)
          ]),
    );
  }
}
