import 'package:flutter/material.dart';
import 'package:newtrailapp/theme/theme.dart';
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
                style: smallGrey,
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
                  Product(
                      price: "\$199",
                      place: "kottakkal",
                      specs: "2 bed room/ 1 bathroom",
                      imagePath: "assets/img/home.jpg"),
                  Product(
                      price: "\$299",
                      place: "puthanathani",
                      specs: "4 bed room/ 2 bathroom",
                      imagePath: "assets/img/home2.jpg"),
                  Product(
                      price: "\$399",
                      place: "Randhathani",
                      specs: "5 bed room/ 3 bathroom",
                      imagePath: "assets/img/home.jpg"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({
    Key key,
    this.price,
    this.place,
    this.specs,
    this.imagePath,
  }) : super(key: key);

  final String price;
  final String place;
  final String specs;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(imagePath),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      place,
                      style: smallGrey,
                    ),
                  ],
                ),
              ),
              Text("4 bed rooms / 2 bathrooms"),
            ],
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.favorite_border),
            ),
          ),
        ],
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
