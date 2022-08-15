import 'package:flutter/material.dart';
import 'package:movie/components/components.dart';
import '../widgets/widgtes.dart';

class HomePage extends StatelessWidget {

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
  
  Widget _sizedBox() => const SizedBox(height: 30);

  EdgeInsets _edgeInsets({double? vertical, double? horizontal}) {
    return EdgeInsets.symmetric(
      vertical: vertical ?? 0.0,
      horizontal: horizontal ?? 0.0
    );
  }

  BorderRadiusGeometry _borderRadius({double? radius}) =>
      BorderRadius.circular(radius ?? 10);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Padding(padding: _edgeInsets(vertical: 10, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _text(
                                text: 'Olá Jonas',
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                            ),
                            _text(
                                text: 'O que você deseja assistir?',
                                color: Colors.white54,
                            ),
                          ],
                        ),
                        ClipRRect(
                           borderRadius: _borderRadius(radius: 30) as BorderRadius,
                           child: const ComponentImage(
                             name: "assets/images/profile.png",
                             height: 60,
                             width: 60,
                           ),
                        )
                      ],
                    ),
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.all(10),
                  margin: _edgeInsets(horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF292B37),
                    borderRadius: _borderRadius()
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.white54, size: 30,),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Pesquisar",
                            hintStyle: TextStyle(color: Colors.white54)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                _sizedBox(),
                UpcomingWidget(),
                _sizedBox(),
                NewMoviesWidget(),
              ],
            ),
        ),
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }

}