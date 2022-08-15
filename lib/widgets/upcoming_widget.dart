import 'package:flutter/material.dart';
import 'package:movie/components/components.dart';

class UpcomingWidget extends StatelessWidget {

  Widget _text({
    required String text,
    required Color? color,
    double? fontSize,
    FontWeight? fontWeight
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text(
                  text: 'Próximos Filmes',
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),
                _text(
                  text: 'Veja todos',
                  color: Colors.white54,
                  fontSize: 16
                ),
              ],
            ),
        ),
        const SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i < 8; i++)
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: ComponentImage(
                      name: "assets/images/up$i.jpg",
                      height: 180,
                      width: 300,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}