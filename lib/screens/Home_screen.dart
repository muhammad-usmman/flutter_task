import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/custom_promo_card.dart';
import 'package:flutter_task/widgets/custom_select_card.dart';
import 'package:google_fonts/google_fonts.dart';

import '../categories/mobile_accesories.dart';
import '../utilities/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.format_align_justify),
        title: Text(
          'Brand',
          style: GoogleFonts.poppins(
            color: Colors.blue.shade300,
            fontSize: 24,
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
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: height * 0.073,
                    width: width * 0.90,
                    child: SearchAnchor(builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        hintText: ' Search',
                        hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.grey)),


                        backgroundColor: MaterialStateProperty.all(
                             Colors.white,
                        ),
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
                            labelText: 'All Categories',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MobileAssescorie()));
                            }),
                        CustomSelectCard(
                            labelText: 'Gadgets',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MobileAssescorie()));
                            }),
                        CustomSelectCard(
                            labelText: 'Clothes',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MobileAssescorie()));
                            }),
                        CustomSelectCard(
                            labelText: 'Accessory',
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MobileAssescorie()));
                            }),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                      // This callback is called when an error occurs while loading the image.

                      // Return a custom error widget with a red warning icon.
                      return const Center(
                        child: Icon(
                          Icons.warning,
                          color: Colors.red,
                          size:
                              48, // Adjust the size of the warning icon as needed
                        ),
                      );
                    },
                    fit: BoxFit.cover,
                    height: height * 0.3,
                    width: width,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    )),
                  ),
                  height: height * .09,
                  width: width * 0.5,
                  child: Column(
                    children: [
                      Text(
                        'Deals and Offers',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text('Electronic Equipment'),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 1))),
                  height: height * .09,
                  width: width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // sizedh10,
                      Container(
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: Text(
                            '   23\n Hour',
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // sizedh10,
                      Container(
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: Center(
                          child: Text(
                            '  34\n Min',
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      // sizedh10,
                      Container(
                        height: height * 0.06,
                        width: width * 0.12,
                        decoration: BoxDecoration(color: Colors.grey.shade200),
                        child: Center(
                          child: Text(
                            '  56\n Sec',
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: height * 0.30,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'T-Shirt',
                          onPressed: () {}),
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'T-Shirt',
                          onPressed: () {}),
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'T-Shirt',
                          onPressed: () {}),
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'T-Shirt',
                          onPressed: () {}),
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'T-Shirt',
                          onPressed: () {}),
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Shirt',
                          onPressed: () {}),
                      CustomCard(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Shirt',
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
            sizedh10,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  height: height * .07,
                  width: width,
                  child: Text(
                    'Home and Outdoor',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: height * 0.28,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomCard2(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Smart Watches',
                          priceText: 'From USD 19',
                          onPressed: () {}),
                      CustomCard2(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Smart Watches',
                          priceText: 'From USD 19',
                          onPressed: () {}),
                      CustomCard2(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Smart Watches',
                          priceText: 'From USD 19',
                          onPressed: () {}),
                      CustomCard2(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Smart Watches',
                          priceText: 'From USD 19',
                          onPressed: () {}),
                      CustomCard2(
                          imageUrl: 'images/shirt2.png',
                          imageLabel: 'Smart Watches',
                          priceText: 'From USD 19',
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
            sizedh10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    )),
                  ),
                  height: height * 0.1,
                  width: width,
                  // color: Colors.cyan,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Center(
                            child: Text(
                              'Source Now',
                              style: GoogleFonts.poppins(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Column(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                            fit: BoxFit.cover,
                            height: height * 0.2,
                            width: width,
                          ),
                          // Text('An easy way to send request to all suppliers'),
                          // ElevatedButton(
                          //   style: ElevatedButton.styleFrom(
                          //     backgroundColor: Colors.blue.shade100,
                          //   ),
                          //   onPressed: () {},
                          //   child: const Text(
                          //     'Send inquiry',
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //       fontSize: 8,
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            sizedh10,
            Row(
              children: [
                SizedBox(
                  height: height * .08,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                    child: Text(
                      'Recomended Items',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0) ,
                    child: Container(
                      height: height* 0.35,
                      width: width*0.45 ,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey  ,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.20,
                              width: width * 0.40,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/shirt2.png',
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Rs 1500/-',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'T-Shirts with multiple\n for men ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0) ,
                    child: Container(
                      height: height* 0.35,
                      width: width*0.45 ,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey  ,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.20,
                              width: width * 0.40,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/shirt2.png',
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Rs 1500/-',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'T-Shirts with multiple\n for men ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0) ,
                    child: Container(
                      height: height* 0.35,
                      width: width*0.45 ,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey  ,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.20,
                              width: width * 0.40,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/shirt2.png',
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Rs 1500/-',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'T-Shirts with multiple\n for men ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0) ,
                    child: Container(
                      height: height* 0.35,
                      width: width*0.45 ,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey  ,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.20,
                              width: width * 0.40,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'images/shirt2.png',
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Rs 1500/-',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'T-Shirts with multiple\n for men ',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
