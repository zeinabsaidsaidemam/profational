import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_learn/home/widgets/dummy_data.dart';
import 'package:responsive_learn/home/widgets/product_container.dart';
import 'categories_taps.dart';
import 'home_app_bar.dart';
import 'home_search_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  static bool isFavorite = false;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeAppBar(),
          SizedBox(
            height: 20.h,
          ),
           HomeSearchSection(),
          SizedBox(
            height: 20.h,
          ),
          const CategoriesTaps(),
        ],
      ),
    );
  }
}
