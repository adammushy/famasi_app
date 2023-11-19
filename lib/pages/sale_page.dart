import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class SalePageScreen extends StatefulWidget {
  const SalePageScreen({super.key});

  @override
  State<SalePageScreen> createState() => _SalePageScreenState();
}

class _SalePageScreenState extends State<SalePageScreen> {
  TextEditingController buyernameController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController expireController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String? validateUsername(String? value) {
    if (value!.isEmpty) {
      return 'Email Field must not be empty';
    } else {
      if (validateEmail(value)) {
        return null;
      } else {
        return 'Email Field must be valid';
      }
    }
  }

  bool validateEmail(String email) {
    String pattern =
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: buyernameController,
                        validator: validateUsername,
                        keyboardType: TextInputType.text,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'buyer name',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: quantityController,
                        // validator: validateUsername,
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'quantity',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: priceController,
                        // validator: validateUsername,
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'Price Per Product',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // controller: userPasswordController,
                        controller: expireController,
                        keyboardType: TextInputType.datetime,
                        // obscureText: true,
                        // validator: validatePassword,
                        style: Theme.of(context).textTheme.bodyMedium,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              borderSide: BorderSide.lerp(
                                const BorderSide(color: Colors.black),
                                const BorderSide(color: Colors.black),
                                1,
                              )),
                          hintText: 'Expire date',
                          hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
                Material(
                  borderRadius: BorderRadius.circular(14.0),
                  elevation: 0,
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          // Navigator.pop(context);

                          void _submitOrder() {
                            String buyerName = buyernameController.text;
                            int quantity = int.parse(quantityController.text);
                            double price = double.parse(priceController.text);
                            DateTime expireDate =
                                DateTime.parse(expireController.text);

                            // Order order = Order(
                            //   buyerName: buyerName,
                            //   quantity: quantity,
                            //   price: price,
                            //   expireDate: expireDate,
                            // );
// ---------THIS IS FUNCTION TO ADD ITEMS TO CART AND APPEND ORDERS IF ARE FROM SAME BUYER
                            setState(() {
                              // Check if there's an existing cart item for the buyer
                              // var existingCartItem = cartItems.firstWhereOrNull(
                              //   (cartItem) => cartItem.buyerName == buyerName,
                              // );

                              // if (existingCartItem != null) {
                              //   // Add order to existing buyer's cart
                              //   existingCartItem.orders.add(order);
                              // } else {
                              //   // Create a new cart item for the buyer
                              //   cartItems.add(CartItem(buyerName: buyerName, orders: [order]));
                              // }

                              // Clear input fields
                              buyernameController.clear();
                              quantityController.clear();
                              priceController.clear();
                              expireController.clear();
                              print("cleared");
                            });
                            Navigator.pop(context);
                          }
                        },
                        borderRadius: BorderRadius.circular(14.0),
                        child: const Center(
                          child: Text(
                            'Sale',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
