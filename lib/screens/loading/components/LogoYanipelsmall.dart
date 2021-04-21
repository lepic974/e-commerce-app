import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class LogoYanipelsmall extends StatelessWidget {
  LogoYanipelsmall({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 31.4, 87.0, 31.0),
          size: Size(97.5, 62.4),
          pinLeft: true,
          pinTop: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Herculanum',
                fontSize: 31,
                color: const Color(0xff707070),
                letterSpacing: 0.124,
              ),
              children: [
                TextSpan(
                  text: 'Y',
                ),
                TextSpan(
                  text: 'anipel',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(87.5, 35.6, 10.0, 10.0),
          size: Size(97.5, 62.4),
          pinRight: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Copyright' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 10.0),
                size: Size(10.0, 10.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(3.0, 2.0, 4.0, 6.0),
                size: Size(10.0, 10.0),
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'C',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 5,
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(87.5, 35.6, 10.0, 10.0),
          size: Size(97.5, 62.4),
          pinRight: true,
          fixedWidth: true,
          fixedHeight: true,
          child:
              // Adobe XD layer: 'Copyright' (group)
              Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 10.0, 10.0),
                size: Size(10.0, 10.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(3.0, 2.0, 4.0, 6.0),
                size: Size(10.0, 10.0),
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'C',
                  style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 5,
                    color: const Color(0xff707070),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
