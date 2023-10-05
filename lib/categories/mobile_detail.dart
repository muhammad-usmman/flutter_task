import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_promo_card.dart';

class MobileDetail extends StatefulWidget {
  const MobileDetail({super.key});

  @override
  State<MobileDetail> createState() => _MobileDetailState();
}

class _MobileDetailState extends State<MobileDetail> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: height * 0.4,
                    // Set the height of the carousel
                    autoPlay: true,
                    // Enable auto-play
                    autoPlayInterval: const Duration(seconds: 3),
                    // Set auto-play interval
                    enlargeCenterPage:
                        true, // Increase the size of the centered item
                  ),
                  items: [
                    // Add your carousel items here (e.g., Image widgets)
                    Image.asset('images/shirt2.png'),
                    Image.asset('images/shirt2.png'),
                    Image.asset('images/shirt2.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1, color: Colors.black)),
                    height: height * 0.58,
                    width: width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                unratedColor: Colors.grey,
                                itemSize: 15,
                                // itemPadding = EdgeInsets.zero,
                                initialRating: 0,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) => setState(() {
                                  this.rating = rating;
                                }),
                              ),
                              Text(
                                '$rating',
                                style: const TextStyle(color: Colors.grey),
                              ),
                              Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.grey.shade400,
                              ),
                              const Icon(
                                Icons.message,
                                size: 20,
                                color: Colors.grey,
                              ),
                              const Text('32 Reviews'),
                              Icon(
                                Icons.circle,
                                size: 8,
                                color: Colors.grey.shade400,
                              ),
                              const Icon(
                                Icons.shopping_basket,
                                size: 20,
                                color: Colors.grey,
                              ),
                              const Text('154 sold'),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Product name goes here',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Rs 500/-',
                                style: GoogleFonts.poppins(
                                  color: Colors.red,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                '(50-100 pcs)',
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: height * 0.085,
                              width: width * 0.75,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        5), // Set the borderRadius to 0 for a rectangular button
                                  ),
                                  padding: const EdgeInsets.all(16.0),
                                  // Customize the button's padding as needed
                                  backgroundColor:
                                      Colors.blue, // Button background color
                                ),
                                child: Text(
                                  'Send Inquiry',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              height: height * 0.085,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: const EdgeInsets.all(16.0),

                                  // backgroundColor: Colors.white, // Button background color
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: height * 0.15,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Condition :',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      'Brand New',
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Material :',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      'Plastic',
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Categorey : ',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      'Electronics, Gadgets',
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Item Num :',
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      '25486',
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          height: height * 0.15,
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Info about edu item is an ideal companion for anyone engaged in learning. The drone provides precise and ...',
                                  softWrap: false,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey.shade800,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Text(
                                'Read more',
                                style: GoogleFonts.poppins(
                                  color: Colors.blue,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: height * 0.21,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Column(
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.85,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(
                          width: 1,
                          color: Colors.black,
                        ))),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.05,
                          width: width * 0.1,
                          decoration: BoxDecoration(
                              color: Colors.tealAccent,
                              border: Border.all(
                                width: 1,
                              )),
                          child: const Center(
                              child: Text(
                            'R',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 24,
                            ),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: height * 0.07,
                          width: width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Supplier',
                                style: GoogleFonts.poppins(
                                    fontSize: 15, color: Colors.grey.shade600),
                              ),
                              Text(
                                'Guanjoi Tradding LLC',
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width:65,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_right,
                              size: 18,
                              color: Colors.grey.shade600,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                    width: width * 0.85,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            // Image.asset(
                            //   'images/flag.png',
                            //    width: 5, height: 5,
                            // ),
                            Text('Germany',
                              style: GoogleFonts.poppins(
                                  fontSize: 13, color: Colors.grey.shade600)
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.verified_user, color: Colors.grey,),
                            Text('verified',style: GoogleFonts.poppins(
                                fontSize: 13, color: Colors.grey.shade600),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.language, color: Colors.grey,),
                            Text('Shipping',style: GoogleFonts.poppins(
                                fontSize: 13, color: Colors.grey.shade600),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Similar Products',
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
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
                          'T-shirts in multiple colors\n availabe for men ',
                          onPressed: () {},
                        ),
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                          'T-shirts in multiple colors\n availabe for men ',
                          onPressed: () {},
                        ),
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                          'T-shirts in multiple colors\n availabe for men ',
                          onPressed: () {},
                        ),
                        CustomCard3(
                          imageUrl: "images/shirt2.png",
                          productPrice: 'Rs 1500/-',
                          descrip:
                          'T-shirts in multiple colors\n availabe for men ',
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
