import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:second_task/constants/app_images.dart';
import 'package:second_task/models/product_model.dart';
import 'package:second_task/widgets/card_widget.dart';
import 'package:second_task/widgets/profile.dart';
import 'package:second_task/widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 2;

  List<ProductModel> productItems = [
    ProductModel(
      imageProduct: Assets.images51OfyPFTnL,
      nameProduct: "Product 1",
      priceProduct: 100,
      rateProduct: 4.5,
      onSale: false,
    ),
    ProductModel(
      imageProduct: Assets.imagesCamera,
      nameProduct: "Product 2",
      priceProduct: 200,
      rateProduct: 4.5,
      onSale: true,
    ),
    ProductModel(
      imageProduct: Assets.imagesFutureSeventhGeneration,
      nameProduct: "Product 3",
      priceProduct: 300,
      rateProduct: 4.5,
      onSale: false,
    ),
    ProductModel(
      imageProduct: Assets.imagesIPhone11Pro,
      nameProduct: "Product 4",
      priceProduct: 400,
      rateProduct: 4.5,
      onSale: true,
    ),
    ProductModel(
      imageProduct: Assets.imagesPampersSwaddlers,
      nameProduct: "Product 4",
      priceProduct: 400,
      rateProduct: 4.5,
      onSale: true,
    ),
    ProductModel(
      imageProduct: Assets.images51OfyPFTnL,
      nameProduct: "Product 5",
      priceProduct: 500,
      rateProduct: 4.5,
      onSale: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(color: Colors.blue),
          ),
        ),
        child: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                selectedIcon: Icon(Icons.home, color: Colors.blue),
                label: "Home"),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined,
                  color: Color.fromARGB(255, 0, 0, 0)),
              label: "Cart",
              selectedIcon: Icon(Icons.shopping_cart, color: Colors.blue),
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_border_rounded, color: Colors.black),
              label: "Favorites",
              selectedIcon: Icon(Icons.favorite, color: Colors.blue),
            ),
            NavigationDestination(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                selectedIcon: Icon(Icons.menu, color: Colors.blue),
                label: "Menu"),
          ],
          indicatorColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: const Color(0xFFFFFFFF),
          selectedIndex: selectedIndex,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const ProfileWidget(),
            const SearchBarWidget(),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "All Products",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 6 / 7.1,
                ),
                itemCount: productItems.length,
                itemBuilder: (context, index) => Center(
                  child: CardWidget(product_item: productItems[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
