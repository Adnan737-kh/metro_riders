import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/screens/history/history.dart';
import 'package:metro_riders/screens/wallet/wallet.dart';
import 'package:metro_riders/styles.dart';

import '../garage/garage_list.dart';
import '../garage/my_garage.dart';
import '../store/store.dart';

class DashBoard extends StatefulWidget {
  final int pageIndex;

  const DashBoard({super.key, required this.pageIndex});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  PageController? _pageController;
  late List<Widget> _screens;
  int _pageIndex = 0;

  final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: widget.pageIndex);

    _screens = const [
      MyGarage(),
      Store(),
      Store(),
      History(),
      Wallet(),
    ];

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_pageIndex != 0) {
          _setPage(0);
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            _barItem(Icons.home_filled, 'garage'.tr, 0),
            _barItem(Icons.shopping_cart, 'store'.tr, 1),
            _barItem(Icons.shopping_bag, 'go'.tr, 2),
            _barItem(Icons.location_history_outlined, 'history'.tr, 3),
            _barItem(Icons.wallet, 'wallet'.tr, 4)
          ],
          onTap: (int index) {
            _setPage(index);
          },
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: _screens.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _screens[index];
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem _barItem(IconData icon, String? label, int index) {
    return BottomNavigationBarItem(
      icon: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon,
              color: index == _pageIndex
                  ? Styles.blackColor
                  : Theme.of(context).hintColor.withOpacity(0.7),
              size: 30),
          index == 1
              ? Positioned(
                  top: -7,
                  right: -7,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                )
              : const SizedBox(),
        ],
      ),

      label: label,

    );
  }

  void _setPage(int pageIndex) {
    setState(() {
      _pageController!.jumpToPage(pageIndex);
      _pageIndex = pageIndex;
    });
  }
}
