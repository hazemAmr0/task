import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helper/app_color.dart';

class TripCard extends StatelessWidget {
  final String driverName;
  final String status;
  final String status2;
  final String address;
  final String phone;

  TripCard({
    required this.driverName,
    required this.status,
    required this.phone,
    required this.status2,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.h,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    driverName,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    ' phone:$phone',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColor.appBarColor,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    status,
                    style: TextStyle(
                      fontSize: 16.sp,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    status2,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColor.appBarColor,
                    ),
                  ),
                  Text(
                    address,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColor.appBarColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
