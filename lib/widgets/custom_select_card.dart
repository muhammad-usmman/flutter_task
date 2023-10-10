import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSelectCard extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  const CustomSelectCard(
      {super.key, required this.labelText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                5),
          ),
          padding: const EdgeInsets.all(14.0),

          shadowColor: Colors.transparent,
        ),

        child: Text(
          labelText,
          style: GoogleFonts.poppins(
            color: Colors.blue,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class DisplayCard extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String productPrice;
  final VoidCallback onPressed;

  const DisplayCard(
      {super.key,
      required this.imageUrl,
      required this.productName,
      required this.productPrice,
        required this.onPressed
      });

  @override
  State<DisplayCard> createState() => _DisplayCardState();
}

class _DisplayCardState extends State<DisplayCard> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return InkWell(
      onTap: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
            border: Border.all(color: Colors.white12),
          ),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: width * 0.2,
                      height: height * 0.2,
                      decoration: BoxDecoration(

                        color: Colors.white70,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: NetworkImage(widget.imageUrl,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.productName,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        widget.productPrice,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Free Shipping',
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          fontSize: 15,
                        ),
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 15,
                            // itemPadding = EdgeInsets.zero,
                            initialRating: 0,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) => setState(() {
                              this.rating = rating;
                            }),
                          ),
                          Text('$rating'),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.circle,
                            size: 5,
                            color: Colors.green,
                          ),
                          const Text('154 orders'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
