import 'package:flutter/material.dart';

class ShowAllDetails extends StatelessWidget {
  static const routeName = '/showalldetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/img/home.jpg'),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    Icon(Icons.arrow_back_ios),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
