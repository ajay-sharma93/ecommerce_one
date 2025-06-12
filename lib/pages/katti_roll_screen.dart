import 'package:ecommerce/widgets/widget_support.dart';
import 'package:flutter/material.dart';

class KattiRollScreen extends StatefulWidget {
  const KattiRollScreen({super.key});

  @override
  State<KattiRollScreen> createState() => _KattiRollScreenState();
}

class _KattiRollScreenState extends State<KattiRollScreen> {
  int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: const Color.fromARGB(255, 150, 112, 222),
                            elevation: 10,
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/katti_rol.png",
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 2,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("MO:MO", style: AppWidget.headlineTextFieldStyle()),
                                  Text(
                                    "Authenticate taste of Local momo & \nperfectly blend of nepali home made aachar",
                                    style: AppWidget.lightsemiTextFieldStyle(),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (a > 1) {
                                      setState(() {
                                        a--;
                                      });
                                    }
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(7)),
                                    padding: const EdgeInsets.all(6),
                                    child: const Icon(Icons.remove, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(a.toString(), style: AppWidget.boldTextFieldStyle()),
                                const SizedBox(width: 10),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      a++;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(7)),
                                    padding: const EdgeInsets.all(6),
                                    child: const Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "Spicy, savory noodles tossed with flavorful minced meat (keema) and aromatic spices. A hearty fusion of comfort and bold taste ready to satisfy your cravings in minutes.",
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Text("Delivery Time", style: AppWidget.boldTextFieldStyle()),
                            const SizedBox(width: 15),
                            const Icon(Icons.alarm, color: Colors.black54),
                            Text("25 min", style: AppWidget.lightsemiTextFieldStyle()),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Price", style: AppWidget.semiBoldTextFieldStyle()),
                                  Text("Rs ${250 * a}", style: AppWidget.semiBoldTextFieldStyle()),
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.3,
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Add to Cart",
                                      style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Poppins'),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.shopping_cart_rounded, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );

  }
}