import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'dummy_data.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  List<String> searchResults = [];

  void searchProducts(String query) {
    setState(() {
      searchResults = DummyData.allNames
          .where((name) => name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                ),
                height: 60.h,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(width: 10.w),
                    SvgPicture.asset(
                      "assets/svg/search.svg",
                      width: 19.w,
                      color: Colors.black45,
                    ),
                    SizedBox(width: 20.w),
                    Expanded(
                      child: TextField(
                        onChanged: searchProducts,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search anything",
                          hintStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                  ),
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    final productName = searchResults[index];
                    final productIndex =
                    DummyData.allNames.indexOf(productName);
                    final productImage = DummyData.allImages[productIndex];
                    final productDetails = DummyData.allDetails[productIndex];

                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
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
                                    productImage,
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
                            height: 6.h,
                          ),
                          Text(
                            productName,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            productDetails,
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
            ],
          ),
        ),
      ),
    );
  }
}