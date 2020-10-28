import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 16 / 10,
        child: LayoutBuilder(builder: (_, constrains) {
          return Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: constrains.maxHeight * 0.7,
                  child: Column(
                    children: [
                      Container(
                        height: 3,
                        width: constrains.maxWidth,
                        color: Color(0xffeeeeee),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/pages/login/nubes.svg',
                    width: constrains.maxWidth,
                    height: constrains.maxHeight * 0.7,
                  ),
                ),
                Positioned(
                  top: constrains.maxHeight * 0.295,
                  left: 10,
                  child: SvgPicture.asset(
                    'assets/pages/login/mujer.svg',
                    width: constrains.maxWidth * 0.3,
                  ),
                ),
                Positioned(
                  top: constrains.maxHeight * 0.295,
                  right: 10,
                  child: SvgPicture.asset(
                    'assets/pages/login/hombre.svg',
                    width: constrains.maxWidth * 0.25,
                  ),
                )
              ],
            ),
          );
        }));
  }
}
