import 'package:flutter/material.dart';
import 'package:money_moora/constants/thame.dart';

class NavigationDrew extends StatelessWidget {
  const NavigationDrew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: kgreyColor,
        child: ListView(
          children: [
            profile(
              imageUrl: 'assets/images/profile.png',
              name: 'Ilham Maulana',
              email: 'bobmeister@gmail.com',
            ),
            const SizedBox(
              height: 30,
            ),
            buildMenuItem(
              text: 'people',
              icon: Icons.people,
              onClicked: () {},
            ),
            buildMenuItem(
              text: 'email',
              icon: Icons.email,
              onClicked: () {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget profile({
  required String imageUrl,
  required String name,
  required String email,
}) {
  return Container(
    margin: const EdgeInsets.only(left: 15, top: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 60,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: boldStyle.copyWith(
                fontSize: 20,
                color: kwhiteColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              email,
              style: whiteStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.white;
  const hoverColor = kwhiteColor;

  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
    leading: Icon(
      icon,
      color: color,
    ),
    title: Text(
      text,
      style: const TextStyle(
        color: color,
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
