import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_learn/home/widgets/search_result.dart';
class HomeSearchSection extends StatelessWidget {
   HomeSearchSection({
    super.key,
  });
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          GestureDetector(
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchResult(),),);
           },
            child: Container(
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1,),),
              height: 60.h,
              width: MediaQuery.sizeOf(context).width*0.75,
              child: Row(
                children: [
                  SizedBox(width: 10.w,),
                  SvgPicture.asset("assets/svg/search.svg",width: 19.w,color: Colors.black45,),
                  SizedBox(width: 20.w,),
                  Text("Search anything",style: TextStyle(color: Colors.black45,fontSize: 17.sp,fontWeight: FontWeight.w400,),)
                ],
              ),
            ),
          ),
          SizedBox(width: 10.w,),
          GestureDetector(
            onTap: (){},
            child: Container(
              decoration: const BoxDecoration(color:Colors.black,),
              height: 60.h,
              width: 60.w,
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/filter.svg',
                  color: Colors.white,
                  height: 18.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}