import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer(
      {super.key,
      required this.imageAsset,
      required this.name,
      required this.details});
  final String imageAsset;
  final String name;
  final String details;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: 50.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Center(
                child: SizedBox(height: 90.h, child: Image.asset(imageAsset)),
              ),
              Positioned(
                right: 1,
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
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
            name,
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            details,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
