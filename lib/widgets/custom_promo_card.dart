import 'package:flutter/material.dart';


class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String imageLabel;
  final VoidCallback onPressed;

  const CustomCard({
    super.key,
    required this.imageUrl,
    required this.imageLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Container(
      width: width*0.35 ,
      height: height* 0.30,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
          bottom: BorderSide(
            color: Colors.grey,
            width:1,
          ),
        )
      ),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            const SizedBox(height: 15,),
            Expanded(
              flex: 5,
              child: Container(

                width: width*0.30, // Set the width as needed
                height: height*0.13, // Set the height as needed
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage(imageUrl),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  imageLabel,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent.shade100,
                  ),
                  onPressed: onPressed,
                  child: const Text(
                    '-25% off',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String imageLabel;
  final String priceText;
  final VoidCallback onPressed;

  const CustomCard2({
    super.key,
    required this.imageUrl,
    required this.imageLabel,
    required this.priceText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Container(
      width: width*0.35 ,
      height: height* 0.30,
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            right: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            bottom: BorderSide(
              color: Colors.grey,
              width:1,
            ),
          )
      ),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Expanded(
              flex: 5,
              child: Container(
                width: width*0.30, // Set the width as needed
                height: height*0.13, // Set the height as needed
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage(imageUrl),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                imageLabel,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(
                priceText,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard3 extends StatelessWidget {
  final String imageUrl;
  final String productPrice;
  final String descrip;
  final VoidCallback onPressed;

  const CustomCard3({
    super.key,
    required this.imageUrl,
    required this.productPrice,
    required this.descrip,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // height: height* 0.30,
        // width: width*0.55 ,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: InkWell(
          onTap: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * 0.27,
                width: width * 0.58,

                decoration:  BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                 productPrice,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  descrip,
                  style: const TextStyle(
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
    );
  }
}
