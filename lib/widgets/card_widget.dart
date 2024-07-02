import 'package:flutter/material.dart';
import 'package:second_task/models/product_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.product_item,
  }) : super(key: key);

  final ProductModel product_item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shadowColor: const Color(0xFFEAF0F9),
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFD8E6FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  alignment: const Alignment(.9, -.8),
                  children: [
                    Center(
                      child: Image.asset(product_item.imageProduct),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 3, color: Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xFF02153F),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFFB8D1FF).withOpacity(.8),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.elliptical(40, 30),
                          ),
                        ),
                        child: product_item.onSale == true
                            ? const Text(
                                "10% OFF",
                                style: TextStyle(
                                  color: Color(0xFF467BD7),
                                  fontSize: 16,
                                ),
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product_item.priceProduct.toString(),
                    style: const TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      children: [
                        const Icon(Icons.star_border),
                        Text(
                          product_item.rateProduct.toString(),
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  product_item.nameProduct,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue),
                ),
                onPressed: () {},
                child: const Text(
                  "Add",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
