import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dummy_data.dart';
class CategoriesTaps extends StatefulWidget {
  const CategoriesTaps({
    Key? key,
  }) : super(key: key);

  static bool isAll = true;
  static bool isMen = false;
  static bool isWomen = false;
  static bool isKids = false;

  @override
  State<CategoriesTaps> createState() => _CategoriesTapsState();
}

class _CategoriesTapsState extends State<CategoriesTaps> {
  String getHeaderText() {
    if (CategoriesTaps.isAll) {
      return 'Our Collection';
    } else if (CategoriesTaps.isMen) {
      return 'Polo T-Shirts';
    } else if (CategoriesTaps.isWomen) {
      return 'Dresses';
    } else if (CategoriesTaps.isKids) {
      return 'T-Shirts';
    } else {
      return '';
    }
  }
  Padding tabsBody() {
    if (CategoriesTaps.isAll) {
      return Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.47,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
                width: 50.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 90.h,
                            child: Image.asset(
                              DummyData.allImages[index],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 1,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  DummyData.boolFav[index]=!DummyData.boolFav[index];
                                });
                              },
                              icon:  Icon(
                              DummyData.boolFav[index]? Icons.favorite: Icons.favorite_border_outlined,
                                color: DummyData.boolFav[index]?Colors.red:Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                       DummyData.allNames[index],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      DummyData.menDetails[index],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    } else if (CategoriesTaps.isMen) {
      return Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.47,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
                width: 50.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 90.h,
                            child: Image.asset(
                              DummyData.menImages[index],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 1,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      DummyData.menNames[index],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      DummyData.menDetails[index],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    } else if (CategoriesTaps.isWomen) {
      return Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.47,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
                width: 50.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 90.h,
                            child: Image.asset(
                              DummyData.womenImages[index],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 1,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      DummyData.womenNames[index],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      DummyData.menDetails[index],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    } else if (CategoriesTaps.isKids) {
      return Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.47,
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
                width: 50.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: SizedBox(
                            height: 90.h,
                            child: Image.asset(
                              DummyData.kidsImages[index],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 1,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      DummyData.kidsNames[index],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      DummyData.menDetails[index],
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      );
    } else {
      return const Padding(padding: EdgeInsets.zero);
    }
  }

  @override
  Widget build(BuildContext context) {
    Padding buildCategoriesRowItem({
      required String categoryName,
      required void Function() onPressed,
      required bool categoryBooleanName,
    }) {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
          width: 120.w,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              backgroundColor: categoryBooleanName
                  ? MaterialStateProperty.all(Colors.black)
                  : MaterialStateProperty.all(
                Colors.grey.withOpacity(0.1),
              ),
            ),
            child: Text(
              categoryName,
              style: TextStyle(
                color: categoryBooleanName ? Colors.white : Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              List<String> categoriesNames = [
                "All",
                "Men",
                "Women",
                "Kids",
              ];
              List<bool> categoriesBooleanNames = [
                CategoriesTaps.isAll,
                CategoriesTaps.isMen,
                CategoriesTaps.isWomen,
                CategoriesTaps.isKids,
              ];
              List<void Function()> categoriesOnPressed = [
                    () {
                  setState(() {
                    CategoriesTaps.isAll = true;
                    CategoriesTaps.isMen = false;
                    CategoriesTaps.isWomen = false;
                    CategoriesTaps.isKids = false;
                  });
                },
                    () {
                  setState(() {
                    CategoriesTaps.isAll = false;
                    CategoriesTaps.isMen = true;
                    CategoriesTaps.isWomen = false;
                    CategoriesTaps.isKids = false;
                  });
                },
                    () {
                  setState(() {
                    CategoriesTaps.isAll = false;
                    CategoriesTaps.isMen = false;
                    CategoriesTaps.isWomen = true;
                    CategoriesTaps.isKids = false;
                  });
                },
                    () {
                  setState(() {
                    CategoriesTaps.isAll = false;
                    CategoriesTaps.isMen = false;
                    CategoriesTaps.isWomen = false;
                    CategoriesTaps.isKids = true;
                  });
                },
              ];
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: buildCategoriesRowItem(
                  categoryName: categoriesNames[index],
                  categoryBooleanName: categoriesBooleanNames[index],
                  onPressed: categoriesOnPressed[index],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                getHeaderText(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        tabsBody(),
      ],
    );
  }
}