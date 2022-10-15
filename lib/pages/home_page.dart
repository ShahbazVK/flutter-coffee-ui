// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:coffee/utils/coffee_tile.dart';
import 'package:coffee/utils/coffee_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isSelectedList = [true, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    void isSelectedFunc(index) {
      for (var i = 0; i < isSelectedList.length; i++) {
        setState(() {
          isSelectedList[i] = false;
        });
      }
      setState(() {
        isSelectedList[index] = true;
      });
    }

    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            ),
          ],
        ),
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Find the best coffee for you",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.orange),
                    hintText: "Find Your Coffee",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextButton(
                      onPressed: () => isSelectedFunc(0),
                      child: CoffeeType(
                        coffeeType: "Capucinno",
                        isSelected: isSelectedList[0],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(1),
                      child: CoffeeType(
                        coffeeType: "Latte",
                        isSelected: isSelectedList[1],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(2),
                      child: CoffeeType(
                        coffeeType: "Black",
                        isSelected: isSelectedList[2],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(3),
                      child: CoffeeType(
                        coffeeType: "Classic",
                        isSelected: isSelectedList[3],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(4),
                      child: CoffeeType(
                        coffeeType: "Oldie",
                        isSelected: isSelectedList[4],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(2),
                      child: CoffeeType(
                        coffeeType: "Black",
                        isSelected: isSelectedList[2],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(2),
                      child: CoffeeType(
                        coffeeType: "Black",
                        isSelected: isSelectedList[2],
                      ),
                    ),
                    TextButton(
                      onPressed: () => isSelectedFunc(2),
                      child: CoffeeType(
                        coffeeType: "Black",
                        isSelected: isSelectedList[2],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    CoffeeTile(
                      coffeeImagePath: "images/coffee8.jpg",
                      coffeeName: "Capucinno",
                      coffeePrice: "4.00",
                    ),
                    CoffeeTile(
                      coffeeImagePath: "images/coffee4.jpg",
                      coffeeName: "Latte",
                      coffeePrice: "16.00",
                    ),
                    CoffeeTile(
                      coffeeImagePath: "images/coffee8.jpg",
                      coffeeName: "Black",
                      coffeePrice: "12.00",
                    ),
                    CoffeeTile(
                      coffeeImagePath: "images/coffee4.jpg",
                      coffeeName: "Cold",
                      coffeePrice: "6.00",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
