import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/MenuController.dart';
import '../../responsive.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuControllers>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            Expanded(
                child: SideMenu()
            ),
            Expanded(
                flex: 5,
                child: DashboardScreen()),
          ],
        ),
      ),
    );
  }
}
