// ignore_for_file: prefer_const_constructors

import 'package:famasi_app/pages/add_stock.dart';
import 'package:famasi_app/pages/stock_transaction_details.dart';
import 'package:famasi_app/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProductStockCardWidget extends StatefulWidget {
  const ProductStockCardWidget({super.key});

  @override
  State<ProductStockCardWidget> createState() => _ProductStockCardWidgetState();
}

class _ProductStockCardWidgetState extends State<ProductStockCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const StockTransactionsPageScreen()),
        );
      },
      onTap: () {},
      child: Container(
        height: 450,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top: 20,bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Azuma",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Tshs. 10000",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                    height: 160,
                    width: double.infinity,
                    child: Image.asset("assets/images/medicine.png")),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text('Product Type: '),
                    Text(
                      "Pills",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text('Brand: '),
                    Text(
                      "Shells",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text('Total Inventory: '),
                    Text(
                      "100",
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text('Status: '),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "status",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddStockScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Add Stock'),
                      ),
                    ),
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const StockTransactionsPageScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('View Details'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // return Container(
    //   color: Colors.white,
    //   child: Padding(
    //     padding:
    //         const EdgeInsets.only(left: 10.0, right: 10, top: 10, bottom: 10),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Row(
    //           children: [
    //             Expanded(
    //               child: Text(
    //                 "product ID : XXXXX",
    //                 textAlign: TextAlign.left,
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   color: AppColors.primaryColor,
    //                   fontSize: 14,
    //                 ),
    //               ),
    //             ),
    //             Expanded(
    //               child: Text(
    //                 "Warning",
    //                 textAlign: TextAlign.right,
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.red,
    //                   fontSize: 14,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         Row(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Expanded(
    //                 child: Image.asset(
    //               "assets/images/medicine.png",
    //               height: 100,
    //             )),
    //             Expanded(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Name : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                             // color: Colors.blue,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: 'Panadol',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Brand : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                             // color: Colors.blue,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: 'Shells',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Total Stock : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: '54',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Selling Price : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: '10,000',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   RichText(
    //                     text: TextSpan(
    //                       style: DefaultTextStyle.of(context).style,
    //                       children: const <TextSpan>[
    //                         TextSpan(
    //                           text: 'Branch Name : ',
    //                           style: TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 14,
    //                             // color: Colors.blue,
    //                           ),
    //                         ),
    //                         TextSpan(
    //                           text: 'Kijitonyama234',
    //                           style: TextStyle(
    //                             fontSize: 14,
    //                             // color: Colors.red,
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         Row(
    //           children: [
    //             Expanded(
    //               flex: 2,
    //               child: Padding(
    //                 padding: const EdgeInsets.only(right: 5),
    //                 child: Material(
    //                   borderRadius: BorderRadius.circular(5.0),
    //                   elevation: 0,
    //                   child: Container(
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: AppColors.primaryColor,
    //                       borderRadius: BorderRadius.circular(5.0),
    //                     ),
    //                     child: Material(
    //                       color: Colors.transparent,
    //                       child: InkWell(
    //                         onTap: () {
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(
    //                                 builder: (context) =>
    //                                     const StockTransactionsPageScreen()),
    //                           );
    //                         },
    //                         borderRadius: BorderRadius.circular(14.0),
    //                         child:  Row(
    //                           children: [
    //                             Expanded(
    //                                 flex: 1,
    //                                 child: Icon(
    //                                   Icons.remove_red_eye_outlined,
    //                                   size: 20,
    //                                   color: Colors.white,
    //                                 )),
    //                             Expanded(
    //                               flex: 2,
    //                               child: Text(
    //                                 'View History',
    //                                 maxLines: 1,
    //                                 overflow: TextOverflow.ellipsis,
    //                                 style: TextStyle(
    //                                     color: Colors.white, fontSize: 12),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             Expanded(
    //               flex: 2,
    //               child: Padding(
    //                 padding: const EdgeInsets.only(left: 5.0, right: 5),
    //                 child: Material(
    //                   borderRadius: BorderRadius.circular(50.0),
    //                   elevation: 0,
    //                   child: Container(
    //                     height: 40,
    //                     decoration: BoxDecoration(
    //                       color: AppColors.primaryColor,
    //                       borderRadius: BorderRadius.circular(50.0),
    //                     ),
    //                     child: Material(
    //                       color: Colors.transparent,
    //                       child: InkWell(
    //                         onTap: () {
    //                           Navigator.push(
    //                             context,
    //                             MaterialPageRoute(
    //                                 builder: (context) =>
    //                                     const AddStockScreen()),
    //                           );
    //                         },
    //                         borderRadius: BorderRadius.circular(40.0),
    //                         child: Row(
    //                           children: [
    //                             Expanded(
    //                                 flex: 1,
    //                                 child: Icon(
    //                                   Icons.add,
    //                                   color: Colors.white,
    //                                   size: 20,
    //                                 )),
    //                             Expanded(
    //                               flex: 2,
    //                               child: Text(
    //                                 'Add Stock',
    //                                 maxLines: 1,
    //                                 overflow: TextOverflow.ellipsis,
    //                                 style: TextStyle(
    //                                     color: Colors.white, fontSize: 12),
    //                               ),
    //                             ),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         const Divider()
    //       ],
    //     ),
    //   ),
    // );
  }
}
