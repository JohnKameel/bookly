import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class PageCount extends StatelessWidget {
  const PageCount({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.pageCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.book,
          size: 18,
          color: Colors.white,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          pageCount.toString(),
          style: Styles.textStyle16,
        ),
        // SizedBox(
        //   width: 5,
        // ),
        // Opacity(
        //   opacity: 0.5,
        //   child: Text(
        //     '(245)',
        //     style: Styles.textStyle14
        //   ),
        // ),
      ],
    );
  }
}
