import 'package:flutter/material.dart';
import 'widgets/customAppbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Text(
                "City",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "San Francisco",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GreyBx(title: "For Sale"),
                    GreyBx(title: "<\$220.00>"),
                    GreyBx(title: "3 - 4 beds"),
                    GreyBx(title: "3 - 4 beds"),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset('assets/img/home.jpg'),
                      ),
                      Row(
                        children: [],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GreyBx extends StatelessWidget {
  const GreyBx({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.black54,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }
}
