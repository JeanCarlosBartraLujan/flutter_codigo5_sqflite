import 'package:flutter/material.dart';
import 'package:flutter_codigo5_sqflite/model/book_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemSliderWidget extends StatelessWidget {
  // String image;
  // String title;
  // String author;

  BookModel model;

  ItemSliderWidget({
    // required this.image,
    // required this.title,
    // required this.author,
    //
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14.0),
            child: Image.network(
              model.image,
              height: 250,
              width: 170,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.author,
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  model.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
