import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              const SizedBox(height: 45,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),

        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );


  }
}
