import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tour_app/const/app_strings.dart';

class BottomNavController extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  final _pages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Text(AppStrings.appName),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => _currentIndex.value = value,
          currentIndex: _currentIndex.value,
          items: [
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: 'Add', icon: Icon(Icons.add_outlined)),
            BottomNavigationBarItem(
                label: 'Favorite', icon: Icon(Icons.favorite_outline)),
          ],
          ),
          body: _pages[_currentIndex.value],
    );
  }
}
