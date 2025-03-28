import 'package:flutter/material.dart';
import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5,),
              child: CustomBookImage(
                imageUrl: 'https://m15.asd.rest/wp-content/uploads/2024/02/%D8%A7%D8%B4%D8%BA%D8%A7%D9%84-%D8%B4%D9%82%D8%A9-393x550.jpg',
              ),
            );
          }
      ),
    );
  }
}
