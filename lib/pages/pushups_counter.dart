import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PushupsCounter extends StatefulWidget {
  const PushupsCounter({super.key});

  @override
  State<PushupsCounter> createState() => _PushupsCounterState();
}

class _PushupsCounterState extends State<PushupsCounter> {
  int counter = 0;

  void increamentCounter() {
    counter++;
    setState(() {});
  }

  void decreamentCounter() {
    counter--;
    setState(() {});
  }

  void resetCounter() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffaab8b9),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 51.h,
              ),
              Text(
                "$counter",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 96.sp,
                      color: const Color(0xff146C94)),
                ),
              ),
              Text(
                "Push ups",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 32.sp,
                      color: const Color(0xffffffff)),
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              SizedBox(
                  width: 140.w,
                  height: 139.12.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff146C94),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.sp)),
                      ),
                      onPressed: increamentCounter,
                      child: Text(
                        "+",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                              fontSize: 32.sp,
                              color: const Color(0xffffffff)),
                        ),
                      ))),
              SizedBox(
                height: 21.88.h,
              ),
              SizedBox(
                  width: 140.w,
                  height: 139.12.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff146C94),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.sp)),
                      ),
                      onPressed: decreamentCounter,
                      child: Text(
                        "-",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                              fontSize: 32.sp,
                              color: const Color(0xffffffff)),
                        ),
                      ))),
              SizedBox(
                height: 21.88.h,
              ),
              SizedBox(
                  width: 140.w,
                  height: 139.12.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff146C94),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.sp)),
                      ),
                      onPressed: resetCounter,
                      child: Text(
                        "Reset",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp,
                              color: const Color(0xffffffff)),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
