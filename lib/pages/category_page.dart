import 'package:flutter/material.dart';
import 'package:movie/components/components.dart';
import 'package:movie/widgets/widgtes.dart';

class CategoryPage extends StatelessWidget {

  Widget _icon({required IconData icon, required double size}) {
    return Icon(icon, color: Colors.white, size: size,);
  }

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

  Widget _column({required List<Widget> children}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: _column(
              children: [
                _padding(
                  vertical: 20,
                  horizontal: 16,
                  child: _column(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: _icon(icon: Icons.arrow_back, size: 30,),
                      ),
                      const SizedBox(height: 30,),
                      const Text(
                        'Descobrir',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                _padding(
                  vertical: 20,
                  horizontal: 16,
                  child: Column(
                    children: [
                      for (int i = 1; i < 10; i++)
                      _padding(
                        vertical: 10,
                        child: Row(
                            children: [
                              ClipRRect(
                                child: ComponentImage(
                                    name: "assets/images/image$i.jpg",
                                    height: 119,
                                    width: 100,
                                    isCover: true,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              const SizedBox(width: 10,),
                              const Text(
                                  "Categoria",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white
                                  ),
                              ),
                              const Spacer(),
                              _icon(icon: Icons.arrow_forward_ios, size: 23,),
                            ],
                          ),
                      )
                    ],
                  ),
                )
              ],
            )
        ),
      ),
      bottomNavigationBar: NavBarWidget(),
    );
  }
}