import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key});

  static const accentColor = Color(0xFFFF8C32); // your lighter orange

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Video Preview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 255, 255, 255), // updated text color
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 9, // fixed 16:9 ratio
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Icon(
                  Icons.play_circle_outline,
                  size: 60,
                  color: accentColor, // updated icon color
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                // logic to upload video will go here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: accentColor, // button background
              ),
              icon: const Icon(
                Icons.upload_file,
                color: Colors.white, // keep icon white for contrast
              ),
              label: const Text(
                "Upload Video",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}