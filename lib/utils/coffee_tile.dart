// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  const CoffeeTile(
      {Key? key,
      required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeePrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                // child: Image.asset("images/coffee1.jpg"),
                child: Image.asset(
                  coffeeImagePath,
                  alignment: Alignment.center,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                // ignore: prefer_const_constructors
                child: Text(
                  coffeeName,
                  textAlign: TextAlign.left,
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 15),
                // ignore: prefer_const_constructors
                child: Text(
                  "with almond milk",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$${coffeePrice}"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      // height: 20,
                      // color: Colors.orange,
                      child: IconButton(
                        padding: EdgeInsets.only(bottom: 0, right: 0),
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          // size: 20,
                        ),
                      ),
                    ),
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
