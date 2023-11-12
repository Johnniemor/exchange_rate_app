import 'package:flutter/material.dart';

class CustomCurrencyList extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String rating;
  const CustomCurrencyList(
      {super.key,
      required this.image,
      required this.title,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: image,
                  ),
                  const SizedBox(width: 15),
                  Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ],
              ),
              Text(rating, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            height: 10, color: Colors.white,
          ),
        )
      ],
    );
  }
}
