import 'package:flutter/material.dart';
import './LogoYanipelsmall.dart';

class LogoWhite extends StatelessWidget {
  LogoWhite({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(165.3, 431.8),
            child:
                // Adobe XD layer: 'Logo-Yanipel-small' (component)
                SizedBox(
              width: 98.0,
              height: 62.0,
              child: LogoYanipelsmall(),
            ),
          ),
        ],
      ),
    );
  }
}
