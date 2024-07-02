import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ebooks/Repostory/ModelClass/EBookModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Bloc/ebook_bloc.dart';

class Screen2 extends StatefulWidget {
  final  String image;
  final String text;
  final String writer;
  final String description;
  const Screen2({super.key, required this.image, required this.text, required this.writer, required this.description, });

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
    child:  Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 450.h,
                    color: Colors.orange,
                    child: CarouselSlider.builder(
                        itemCount: widget.image.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                              child: Image.network(
                               widget.image.toString(),
                                fit: BoxFit.cover,
                              ),
                            ),
                        options: CarouselOptions(
                          height: 320.h,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 430, left: 45),
                    child: Container(
                      width: 300.w,
                      height: 57.h,
                      decoration: ShapeDecoration(
                          shadows: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0.r,
                              spreadRadius: 2.0.r,
                            ),
                          ],
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r))),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              width: 58.w,
                              height: 26.h,
                              decoration: ShapeDecoration(
                                  color: Color(0xFFFFF8DF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Row(
                                  children: [
                                    RatingBar(
                                      filledIcon: Icons.star,
                                      size: 22,
                                      emptyIcon: Icons.star_border,
                                      onRatingChanged: (value) =>
                                          debugPrint('$value'),
                                      initialRating: 1,
                                      maxRating: 1,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 1),
                                      child: Text(
                                        '4.8',
                                        style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.sp,
                                          fontWeight: FontWeight.w500,
                                        )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 31.w,
                            ),
                            Container(
                              width: 70.w,
                              height: 26.h,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: ShapeDecoration(
                                color: Color(0xFFE2FBFA),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r)),
                              ),
                              child: Center(
                                child: Text(
                                  'Fantasy',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Color(0xFF153337),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 29.w,
                            ),
                            Container(
                              width: 82.w,
                              height: 26.h,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                children: [
                                  Text('432',
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: Color(0xFF153337),
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )),
                                  Text(
                                    'Pages',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Color(0xFF153337),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50,top: 15),
                    child: Container(width: 300.w,height: 50.h,
                    child: Padding(
                      padding: const EdgeInsets.only( top: 5),
                      child: Column(
                        children: [
                          Text(
                            widget.text,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                           widget.writer,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 16.r,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 15.r,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                  // Icon(Icons.navigate_before)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270, top: 25),
                child: Text(
                  'Synopsis',
                  style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                width: 369.w,
                child: Text(widget.description,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.5.h,
                    ),
                  ),
                ),
              ),
              Container(
                width: 450.w,
                height: 60.h,
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.r),
                            topLeft: Radius.circular(10.r)))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 30.r,backgroundColor: Colors.white,
                          child: SizedBox(width: 30.w,height: 30.h,
                              child: Image.asset("assets/c.png"))),
                      SizedBox(width: 25.w,),


                      Container(
                        width: 250,
                        height: 52,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                        decoration: ShapeDecoration(
                          color: Color(0xFF404066),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x26000000),
                              blurRadius: 40.r,
                              offset: Offset(0, 12),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.sp,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
    )

),
        ),

    );
  }
}
