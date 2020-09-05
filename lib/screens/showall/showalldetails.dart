import 'package:flutter/material.dart';

class ShowAllDetails extends StatelessWidget {
  static const routeName = '/showalldetails';

  @override
  Widget build(BuildContext context) {
    Map argu = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          const SizedBox(
            height: 10,
          ),
          Text(argu['housename']),
        ],
      ),
    );
  }
}
