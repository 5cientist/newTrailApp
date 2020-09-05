import 'package:flutter/material.dart';
import 'package:newtrailapp/screens/showall/showalldetails.dart';
import 'package:newtrailapp/theme/theme.dart';
import 'widgets/customAppbar.dart';
import 'package:newtrailapp/models/homeDataModels.dart';

class HomePage extends StatelessWidget {
  void onPressedEvent(BuildContext context) {
    Navigator.of(context).pushNamed(ShowAllDetails.routeName);
  }

  List<HomeDataModel> houseData = [
    HomeDataModel(
      houseName: 'this is house',
      bathroom: 2,
      bedroom: 4,
      description: 'asdfdsfsdfsdfdsfsdf',
      price: 222,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          height: 50,
          width: 120,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(9, 9, 65, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.place,
                color: Colors.white,
              ),
              Text(
                "Map View",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
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
              titlebar(),
              priceTagList(context),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => onPressedEvent(context),
                    child: Product(
                        price: houseData[0].price.toString(),
                        place: "kottakkal",
                        specs: "2 bed room/ 1 bathroom",
                        imagePath: "assets/img/home.jpg"),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container priceTagList(BuildContext context) {
    return Container(
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
    );
  }

  Row titlebar() {
    return Row(
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
