import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/helper/app_color.dart';
import 'package:task/screens/widgets/custom_app_bar.dart';
import 'package:task/screens/widgets/driver_card.dart';

class DriverDetailsScreen extends StatelessWidget {
  const DriverDetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  "Driver ",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                ),
              ),

              // Driver Details Section
              const DriverCard(),
              // Live Location Map
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Live Location",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child:
                        Icon(Icons.location_on, size: 100, color: Colors.red),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: AppColor.appBarColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/cam-recorder.png',
                        height: 30.h,
                        width: 30.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
