import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'featured_listview_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListView(),
          const SizedBox(height: 52),
          Text("Best Seller", style: Styles.textStyle18),
          const SizedBox(height: 21),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
