import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controllers/MenuController.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: context.read<MenuControllers>().controlMenu,
              icon: Icon(Icons.menu)),
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard(),
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white10),
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profile_pic.png',
            height: 38,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text('Angelina Joli'),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(defaultPadding / 2),
            padding: EdgeInsets.all(defaultPadding * 0.75),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: primaryColor,
            ),
            child: SvgPicture.asset(
              'assets/icons/Search.svg',
            ),
          ),
        ),
      ),
    );
  }
}
