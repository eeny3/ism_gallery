import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;
  final int viewsCount;
  final int likesCount;

  const ImageCard({
    Key? key,
    required this.imageUrl,
    required this.viewsCount,
    required this.likesCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 4,
      ),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Icon(
                Icons.favorite_outline,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                likesCount > 1000
                    ? '${(likesCount / 1000).toStringAsFixed(1)}k'
                    : likesCount.toString(),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                viewsCount > 1000
                    ? '${(viewsCount / 1000).toStringAsFixed(1)}k'
                    : viewsCount.toString(),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
