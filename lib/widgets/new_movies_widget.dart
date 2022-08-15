import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie/components/components.dart';

class NewMoviesWidget extends StatelessWidget {

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

  Widget _padding({
     double? horizontal,
     double? vertical,
     required Widget child
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 0.0,
            vertical: vertical ?? 0.0
        ),
      child: child,
    );
  }

  Widget _sizedBox({double? height, double? width}) =>
      SizedBox(height: height ?? 0.0, width: width ?? 0.0,);

  Widget _column({required List<Widget> widgets}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _padding(
            horizontal: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _text(
                  text: 'Novos Filmes',
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
        _sizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
                for (int i = 1; i < 10; i++)
                InkWell(
                  onTap: () => Timer(
                      const Duration(milliseconds: 5),
                      () => Navigator.pushNamed(context, "movie_page")),
                  child: Container(
                    width: 190,
                    height: 300,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF292B37),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF292B37).withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 6
                        )
                      ]
                    ),
                    child: _column(
                      widgets: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                          ),
                          child: ComponentImage(
                              name: "assets/images/image$i.jpg",
                              height: 200,
                              width: 200,
                              isCover: true,
                          ),
                        ),
                        _padding(
                          horizontal: 5,
                          vertical: 10,
                          child: _column(
                            widgets: [
                              _text(
                                  text: 'Título',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18
                              ),
                              _sizedBox(height: 8,),
                              _text(
                                  text: '2022 Ação/Aventura ',
                                  color: Colors.white54
                              ),
                              _sizedBox(height: 5,),
                              Row(
                                children: [
                                  const Icon(Icons.star, color: Colors.amber,),
                                  _sizedBox(width: 5,),
                                  _text(text: '8.5', color: Colors.white54, fontSize: 16)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}