import 'package:flutter/material.dart';
import 'package:gramaz_app/constants.dart';
import 'package:gramaz_app/features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: kSplashColor),
      ),
      body: SearchViewBody(),
    );
  }
}
