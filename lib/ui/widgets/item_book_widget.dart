import 'package:flutter/material.dart';
import 'package:flutter_codigo5_sqflite/model/book_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemBookWidget extends StatelessWidget {
  // String image;
  // String author;
  // String title;
  // String description;

  BookModel model;
  Function onTap;

  ItemBookWidget({
    // required this.image,
    // required this.author,
    // required this.title,
    // required this.description,
    required this.model,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              model.image,
              width: 76.0,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: Colors.white60,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  model.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  model.description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: Colors.white60,
                    fontSize: 12.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap();
                  },
                  child: Text(
                    "Eliminar",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.85),
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    ),
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
