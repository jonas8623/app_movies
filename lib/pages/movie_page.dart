import 'package:flutter/material.dart';
import 'package:movie/components/components.dart';
import 'package:movie/widgets/widgtes.dart';

class MoviePage extends StatelessWidget {

  Widget _padding({
    double? vertical,
    double? horizontal,
    required Widget child
  }) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: vertical ?? 0.0,
            horizontal: horizontal ?? 0.0,
        ),
        child: child,
    );
  }

  Widget _image({
    required String name,
    required double height,
    required double width,
    bool? isCover = false
  }) {
    return ComponentImage(
        name: name,
        height: height,
        width: width,
        isCover: isCover,
    );
  }

  Widget _icon({GestureTapCallback? onPressed, required IconData icon}) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white, size: 30)
    );
  }

  Widget _row({required List<Widget> children}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }

  Widget _sizedBox({double? height}) => SizedBox(height: height ?? 30);

  Widget _text({
    required String text,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign
  }) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize ?? 30,
        fontWeight: fontWeight
      ),
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
           Opacity(
            opacity: 0.4,
            child: _image(
                name: "assets/images/stack.jpg",
                height: 280,
                width: double.infinity,
                isCover: true,
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
                  children: [
                      _padding(
                        vertical: 10,
                        horizontal: 6,
                        child: _row(
                          children: [
                            _icon(
                              onPressed: () => Navigator.pop(context),
                              icon: Icons.arrow_back,),
                            _icon(
                             onPressed: () {},
                             icon: Icons.favorite_border,),
                          ],
                        ),
                      ),
                    _sizedBox(height: 60),
                    _padding(
                        horizontal: 10,
                        child: _row(
                          children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 8
                                    )
                                  ]
                                ),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: _image(
                                        name: "assets/images/image1.jpg",
                                        height: 250,
                                        width: 180,
                                      isCover: true,
                                    ),
                                ),
                              ),
                            Container(
                              margin: const EdgeInsets.only(right: 50, top: 75),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8
                                  ),
                                ]
                              ),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 60,
                              ),
                            )
                          ],
                        ),
                    ),
                    _sizedBox(),
                    MovieButtonsWidget(),
                    _sizedBox(),
                    _padding(
                      vertical: 20,
                      horizontal: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _text(text: "Viúva Negra", fontWeight: FontWeight.w500),
                          _sizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: _text(
                              text: "Ao nascer, a Viúva Negra, então conhecida como Natasha Romanova, é entregue à KGB,"
                                    " que a prepara para se tornar sua agente suprema."
                                    " Porém, o seu próprio governo tenta matá-la quando a União Soviética se desfaz.",
                              fontSize: 16,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _sizedBox(height: 10),
                  ],
                ),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}