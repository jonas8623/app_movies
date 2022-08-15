import 'package:flutter/material.dart';

class MovieButtonsWidget extends StatelessWidget {

  Widget _container({required IconData icon}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xFF292B37),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF292B37).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4
            )
          ]
      ),
      child: Icon(icon, color: Colors.white, size: 36,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _container(icon: Icons.add),
            _container(icon: Icons.favorite_border),
            _container(icon: Icons.download),
            _container(icon: Icons.share),
          ],
        ),
    );
  }
}