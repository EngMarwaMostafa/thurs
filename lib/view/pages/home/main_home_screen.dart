import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../categories/categories_screen.dart';
import '../details/my_order_screen.dart';
import '../menu/menu_screen.dart';
import '../offers/offers_screen.dart';
import 'home_page_body.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static  List<Widget> _widgetOptions = <Widget>[

    CategoriesScreen(),
    OffersScreen(),
    HomePageBody(),
    MyOrderScreen(),
    MoreScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon:  ImageIcon(
                AssetImage('assets/icons/cat.png',),
                color: AppColors.but2Color,),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/offers.png'),
                color: AppColors.but2Color, ),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/home.png'),
                color: AppColors.but2Color,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/orders.png'),
                color: AppColors.but2Color,
              ),
              label: 'MyOrders',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/more.png'),
                color: AppColors.but2Color,
              ),
              label: 'More',
            ),
          ],

          type: BottomNavigationBarType.fixed,
          unselectedItemColor:AppColors.but2Color,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.but2Color,
          backgroundColor: AppColors.bottomColor,
          onTap: _onItemTapped,
          elevation: 4
      ),
    );
  }
}
