import 'package:flutter/material.dart';
import 'package:flutter_task/utilities/utils.dart';
import 'package:flutter_task/widgets/custom_promo_card.dart';
import 'package:flutter_task/widgets/custom_select_card.dart';
import 'package:google_fonts/google_fonts.dart';

import 'mobile_detail.dart';

class MobileAssescorie extends StatefulWidget {
  const MobileAssescorie({super.key});

  @override
  State<MobileAssescorie> createState() => _MobileAssescorieState();
}

class _MobileAssescorieState extends State<MobileAssescorie> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: Text(
          'Mobile Accessories',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: SizedBox(
                    height: height * 0.073,
                    width: width * 0.95,
                    child: SearchAnchor(builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        shape: MaterialStateProperty.all(
                          const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 8.0)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search),
                        // trailing: <Widget>[
                        //   Tooltip(
                        //     message: 'Change brightness mode',
                        //     child: IconButton(
                        //       isSelected: isDark,
                        //       onPressed: () {
                        //         setState(() {
                        //           isDark = !isDark;
                        //         });
                        //       },
                        //       icon: const Icon(Icons.wb_sunny_outlined),
                        //       selectedIcon: const Icon(Icons.brightness_2_outlined),
                        //     ),
                        //   )
                        // ],
                      );
                    }, suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            setState(() {
                              controller.closeView(item);
                            });
                          },
                        );
                      });
                    }),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  height: height * 0.09,
                  width: width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomSelectCard(
                          labelText: 'Tablets',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MobileDetail(),
                              ),
                            );
                          },
                        ),
                        CustomSelectCard(
                          labelText: 'Iphone',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MobileDetail(),
                              ),
                            );
                          },
                        ),
                        CustomSelectCard(
                          labelText: 'I-pods',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MobileDetail(),
                              ),
                            );
                          },
                        ),
                        CustomSelectCard(
                            labelText: 'Androids', onPressed: () {}),
                        CustomSelectCard(
                          labelText: 'Laptops',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MobileDetail(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                DisplayCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv81C76wulhItVWIiNovWXzfJpPJiTB5tFVY9SsyGxKR0Qi78xbQQpfk4WWdRO-KDXGGU&usqp=CAU',
                    productName: 'Regular Iphone',
                    productPrice: 'Rs 1500/-',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MobileDetail(),
                        ),
                      );
                    }),
                sizedh10,
                DisplayCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv81C76wulhItVWIiNovWXzfJpPJiTB5tFVY9SsyGxKR0Qi78xbQQpfk4WWdRO-KDXGGU&usqp=CAU',
                    productName: 'Regular Iphone',
                    productPrice: 'Rs 1500/-',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MobileDetail(),
                        ),
                      );
                    }),
                sizedh10,
                DisplayCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv81C76wulhItVWIiNovWXzfJpPJiTB5tFVY9SsyGxKR0Qi78xbQQpfk4WWdRO-KDXGGU&usqp=CAU',
                    productName: 'Regular Iphone',
                    productPrice: 'Rs 1500/-',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MobileDetail(),
                        ),
                      );
                    }),
                sizedh10,
                DisplayCard(
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv81C76wulhItVWIiNovWXzfJpPJiTB5tFVY9SsyGxKR0Qi78xbQQpfk4WWdRO-KDXGGU&usqp=CAU',
                    productName: 'Regular Iphone',
                    productPrice: 'Rs 1500/-',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MobileDetail(),
                        ),
                      );
                    }),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'You may Also Like',
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.45,
                  width: width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                              'T-shirts in multiple colors\n available for men ',
                          onPressed: () {},
                        ),
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                              'T-shirts in multiple colors\n available for men ',
                          onPressed: () {},
                        ),
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                              'T-shirts in multiple colors\n available for men ',
                          onPressed: () {},
                        ),
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                              'T-shirts in multiple colors\n available for men ',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
