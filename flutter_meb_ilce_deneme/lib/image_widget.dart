import 'package:flutter/material.dart';

// ignore: camel_case_types
// ignore: camel_case_types
class Images_meb extends StatelessWidget {
  const Images_meb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.transparent,
        child: Center(
          child: Image.asset(
            'assets/images/meb_transparan.png',
          ),
        ),
      ),
    );
  }
}
