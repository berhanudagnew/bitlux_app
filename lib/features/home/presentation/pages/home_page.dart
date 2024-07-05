import 'package:bitlux_app/core/constants/colors.dart';
import 'package:bitlux_app/core/constants/sizes.dart';
import 'package:bitlux_app/features/balance/presentation/pages/balace_board.dart';
import 'package:bitlux_app/features/orderbook/presentation/pages/order_list.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  final List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: const EdgeInsets.all(BitLuxSizes.xs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BalanceBoard(),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const OrderList();
              },
            ),
          ),
        ],
      ),
    ),
    const Text(
      'Index 1: Order History',
      style: optionStyle,
    ),
    const Text(
      'Index 2: Warning Orders',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BitLuxColors.primary,
      appBar: AppBar(
        backgroundColor: BitLuxColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text('BitLux', style: GoogleFonts.roboto(color: Colors.white)),
      ),
      body: _widgetOptions[_selectedIndex],
      endDrawer: Drawer(
        backgroundColor: BitLuxColors.primary,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: BitLuxColors.secondary,
              ),
              child: Center(
                child: Text(
                  'BitLux Menu',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              textColor: BitLuxColors.light,
              selectedColor: BitLuxColors.buttonGold,
              title: const Text('Home'),
              selected: _selectedIndex == 0,
              onTap: () {
                // Update the state of the app
                _onItemTapped(0);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: BitLuxColors.light,
              selectedColor: BitLuxColors.buttonGold,
              title: const Text('Order History'),
              selected: _selectedIndex == 1,
              onTap: () {
                // Update the state of the app
                _onItemTapped(1);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              textColor: BitLuxColors.light,
              selectedColor: BitLuxColors.buttonGold,
              title: const Text('Warning Orders'),
              selected: _selectedIndex == 2,
              onTap: () {
                // Update the state of the app
                _onItemTapped(2);
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
