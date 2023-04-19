import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgSrc: 'assets/icons/menu_doc.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgSrc: 'assets/icons/menu_notification.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgSrc: 'assets/icons/menu_setting.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
        required this.title,
        required this.svgSrc,
        required this.press})
      : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      leading: SvgPicture.asset(svgSrc,
          height: 16,
          colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn)),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
