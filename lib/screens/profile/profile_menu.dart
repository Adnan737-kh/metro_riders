import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metro_riders/Strings.dart';
import 'package:metro_riders/screens/profile/widgets/menu_item_card.dart';
import 'package:metro_riders/styles.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 14),
                child: Row(
                  children: [
                    Text(
                      'Hello, Vino Costa!',
                      textAlign: TextAlign.start,
                      style: Styles.textStyleLargeBlack.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'profile'.tr,
                iconPath: AppIcons.profileIcon,
                onTap: () {
                  Get.toNamed('/profile');
                },
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'support'.tr,
                iconPath: AppIcons.supportIcon,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'subscription'.tr,
                iconPath: AppIcons.subscriptionIcon,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'setting'.tr,
                iconPath: AppIcons.settingIcon,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'driving_rules'.tr,
                iconPath: AppIcons.drivingRulesIcon,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'privacy_policy'.tr,
                iconPath: AppIcons.privacyPolicyIcon,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              MenuItemCard(
                title: 'about_us'.tr,
                iconPath: AppIcons.aboutUsIcon,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
