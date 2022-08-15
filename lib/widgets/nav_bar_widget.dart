import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {

  Widget _iconButton({required IconData icon, GestureTapCallback? onPressed}) {
    return IconButton(
      icon: Icon(icon, size: 36, color: Colors.white,),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _iconButton(
            onPressed: () => Navigator.pushNamed(context, "/"),
            icon: Icons.home,
          ),
          _iconButton(
            onPressed: () => Navigator.pushNamed(context, "category_page"),
            icon: Icons.category,
          ),
          _iconButton(
            onPressed: () {},
            icon: Icons.favorite_border,
          ),
          _iconButton(
            onPressed: () {},
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}