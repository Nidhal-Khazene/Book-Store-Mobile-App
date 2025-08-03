import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gramaz_app/core/utils/assets.dart';
import 'package:gramaz_app/core/widgets/custom_error_message.dart';
import 'package:gramaz_app/core/widgets/custom_loading_indicator.dart';
import 'package:gramaz_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';

import 'custom_book_image.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: CustomBookImage(image: AssetsData.tempImage),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
