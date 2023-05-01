import 'package:bubble_tea_app/model/drink.dart';
import 'package:bubble_tea_app/model/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({Key? key, required this.drink}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.5;
  void CustomizedSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  double iceValue = 0.5;
  void Customizedice(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  double pearlValue = 0.5;
  void Customizedpearl(double newValue) {
    setState(() {
      pearlValue = newValue;
    });
  }

  void addToCart() {
    Provider.of<BubbleTeaShop>(context, listen: false).addToCart(widget.drink);
    Navigator.pop(context);
    final snackbar = SnackBar(content: Text("Item Sucessfully added to cart"));
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.drink.name),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.drink.img,
              height: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("Sweet"),
                    ),
                    Expanded(
                      child: Slider(
                          value: sweetValue,
                          onChanged: ((value) {
                            return CustomizedSweet(value);
                          })),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("ice"),
                    ),
                    Expanded(
                      child: Slider(
                          value: iceValue,
                          onChanged: ((value) {
                            return Customizedice(value);
                          })),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("pearls"),
                    ),
                    Expanded(
                      child: Slider(
                          value: pearlValue,
                          onChanged: ((value) {
                            return Customizedpearl(value);
                          })),
                    )
                  ],
                ),
              ],
            ),
          ),
          MaterialButton(
            color: Colors.brown,
            onPressed: addToCart,
            child: Text("Add To Cart"),
          )
        ],
      ),
    );
  }
}
