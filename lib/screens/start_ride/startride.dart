import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:metro_riders/Strings.dart';

import '../../styles.dart';
import '../../utility/controller.dart';
import 'CategoryTab.dart';
import 'history_tab.dart';

class StartRide extends StatelessWidget {
  StartRide({super.key});

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 768,
            width: double.infinity,
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(34.0151, 71.5249),
                zoom: 14.4746,
              ),
              onMapCreated: (GoogleMapController controller) {
                googleMapController.complete(controller);
              },
              zoomControlsEnabled: false,
              zoomGesturesEnabled: false,
              myLocationButtonEnabled: false,
              myLocationEnabled: false,
            ),
          ),
          Positioned(
            top: 42.0,
            right: 16.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return MapBottomSheet();
                  },
                );
              },
              child: const Image(
                image: AssetImage('assets/icons/drawer.png'),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 30.0,
              child: Container(
                width: 327,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  color: Styles.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          'assets/icons/search.png',
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Image(
                        image: AssetImage('assets/icons/zeg.png'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Image(
                        width: 32,
                        height: 32,
                        image: AssetImage('assets/icons/star.png'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Image(
                        width: 32,
                        height: 32,
                        image: AssetImage('assets/icons/setting.png'),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 50,
            right: 16.0,
            child: const Column(
              children: [
                Image(image: AssetImage('assets/icons/plusMap.png')),
                SizedBox(height: 8.0),
                Image(image: AssetImage('assets/icons/minusMap.png')),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1 - 190,
            right: 16.0,
            child:
                const Image(image: AssetImage('assets/icons/myLocation.png')),
          ),
        ],
      ),
    );
  }
}

class MapBottomSheet extends StatelessWidget {
  const MapBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final TabControllerRest myTab = Get.put(TabControllerRest());
    return Container(
      height: MediaQuery.of(context).size.height * 0.90,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Styles.whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              margin: const EdgeInsets.only(left: 24, top: 24),
              child: searchView(context)),
          const SizedBox(
            height: 16,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                _buildTabView(),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 550,
                  child: TabBarView(
                          controller: myTab.controller,
                          children: const [
                    CategoryTab(),
                    HistoryTab(),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget searchView(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 52,
          width: 287,
          child: TextFormField(
            scrollPadding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                fillColor: Styles.greyColor,
                filled: true,
                hintText: 'search_for_places'.tr,
                prefixIcon: Image.asset(AppIcons.searchIcon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                )),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Image(image: AssetImage(AppIcons.crossIcon))
      ],
    );
  }

  Widget _buildTabView() {
    final TabControllerRest myTab = Get.put(TabControllerRest());
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 40,
        width: 327,
        decoration: BoxDecoration(
          color: Styles.greyColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TabBar(
          controller: myTab.controller,
          labelPadding: EdgeInsets.zero,
          labelColor: Styles.whiteColor,
          labelStyle: const TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: Styles.blackColor,
          unselectedLabelStyle: const TextStyle(
            fontSize: 14,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
          // indicatorPadding: const EdgeInsets.all(2.0),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.blackColor),
          tabs: [
            Tab(
              child: Text('category'.tr),
            ),
            Tab(
              child: Text('history'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
