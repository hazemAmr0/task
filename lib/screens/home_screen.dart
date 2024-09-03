import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/screens/deriver_details_screen.dart';
import 'package:task/screens/widgets/button_section.dart';
import 'package:task/screens/widgets/custom_app_bar.dart';
import 'package:task/screens/widgets/trip_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Profile and Buttons
              const CustomAppBar(),
              SizedBox(height: 20.h),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Button_Section(),
              ),
              // Live Location Map
              SizedBox(height: 20.h),
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
              // Trips Section
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Trips",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DriverDetailsScreen()));
                        },
                        child: TripCard(
                            driverName: "Mahmoud",
                            status: "Running",
                            phone: "056673674",
                            status2: "inside",
                            address: "from university to alex")),
                    TripCard(
                        driverName: "Ezzat",
                        status: "Ended",
                        phone: "054756473",
                        status2: "outside",
                        address: "from home to university"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


