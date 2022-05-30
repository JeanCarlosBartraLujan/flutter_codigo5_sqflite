import 'package:flutter/material.dart';
import 'package:flutter_codigo5_sqflite/model/book_model.dart';
import 'package:flutter_codigo5_sqflite/ui/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  BookModel book;

  DetailPage({
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(28.0),
                  bottomLeft: Radius.circular(28.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(book.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Título",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    book.title,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Autor",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                  Text(
                    book.author,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    width: 100,
                    height: 3,
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Descripción",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    book.description,
                    style: GoogleFonts.poppins(
                      color: Colors.white60,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
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
