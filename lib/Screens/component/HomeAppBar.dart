import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class Homeappbar extends StatefulWidget {
  const Homeappbar({super.key, required this.DrawerKey});
  final GlobalKey<SliderDrawerState> DrawerKey;>

  @override
  State<Homeappbar> createState() => _HomeappbarState();
}

class _HomeappbarState extends State<Homeappbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    _animationController.dispose(); // Always dispose controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              if (isDrawerOpen) {
                _animationController.reverse();
              } else {
                _animationController.forward();
              }
              setState(() {
                isDrawerOpen = !isDrawerOpen;
              });
            },
            icon: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _animationController,
            ),
          ),
          IconButton(onPressed: (){

          }, icon: Icon(CupertinoIcons.trash,color: Colors.red,),)
        ],
      ),
    );
  }
}
