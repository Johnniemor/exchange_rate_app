import 'dart:async'; // Import the dart:async library
import 'custom_latest_time_box.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ExChangeRateLoading extends StatelessWidget {
  const ExChangeRateLoading({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> fakeLoading() async {
      await Future.delayed(const Duration(seconds: 3));
    }

    return FutureBuilder(
      future: fakeLoading(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Shimmer.fromColors(
            baseColor: const Color(0xFFE0E0E0),
            highlightColor: const Color(0xFFF5F5F5),
            child: Column(
              children: [
                const CustomLatestTimeBox(title: "Latest Update :", subtitle: ""),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 20,
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Column(
            children: [
              CustomLatestTimeBox(title: "Latest Update :", subtitle: ""),
              SizedBox(height: 15),
            ],
          );
        }
      },
    );
  }
}
