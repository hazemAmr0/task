import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helper/app_color.dart';

class Button_Section extends StatelessWidget {
  const Button_Section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 55.h,
            width: 140.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 1.5.w),
            ),
            child: Center(
                child: Text(
              "subjects",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        SizedBox(width: 30.w),
        InkWell(
          onTap: () {},
          child: Container(
            height: 55.h,
            width: 140.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.appBarColor,
            ),
            child: Center(
                child: Text(
              "Tracking",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        SizedBox(width: 10.w),
      ],
    );
  }
}
