import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_listview_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                FeaturedListView(),
                const SizedBox(height: 52),
                Text("Best Seller", style: Styles.textStyle18),
                const SizedBox(height: 21),
              ],
            ),
          ),
          const SliverFillRemaining(child: BestSellerListView()),
        ],
      ),
    );
  }
}
