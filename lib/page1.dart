import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ebooks/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Book",
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(
                      "Junction",
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          color: Color(0xFFD1618A),
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200.w,
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 27,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    hintText: "Search of Books",
                    prefixIcon: Icon(Icons.search_rounded),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250, top: 20),
                child: Text(
                  'Best Sellers',
                  style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 23.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 650.h,
                width: 500.w,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 300 / 470,
                  shrinkWrap: true,
                  children: List.generate(
                    20,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));},
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 200.w,
                                    height: 202.h,
                                    decoration: ShapeDecoration(
                                      color: Colors.orange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.r),
                                          topRight: Radius.circular(20.r),
                                        ),
                                      ),
                                    ),
                                    child: Image.asset(
                                      "assets/a.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7,top: 2),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Book of Night',
                                          style: GoogleFonts.playfairDisplay(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 19.w,
                                        ),
                                        Container(
                                          width: 45.w,
                                          height: 18.h,
                                          decoration: ShapeDecoration(
                                              color: Color(0xFFFFF8DF),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20))),
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 3),
                                            child: Row(
                                              children: [
                                                RatingBar(
                                                  filledIcon: Icons.star,size: 20,
                                                  emptyIcon: Icons.star_border,
                                                  onRatingChanged: (value) => debugPrint('$value'),
                                                  initialRating: 1,
                                                  maxRating: 1,
                                                ),
                                              SizedBox(width: 1.w,),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 3),
                                                  child: Text(
                                                    '4.8',
                                                    style: GoogleFonts.inter(
                                                      textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13.sp,
                                                      fontWeight: FontWeight.w400,
                                                     )
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 90,),
                                    child: Text(
                                      'Holly Black',
                                      style: GoogleFonts.inter(
                                        textStyle:TextStyle(
                                        color: Color(0xFF505050),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 100,top: 2),
                                    child: Text(
                                      '\$9.99',
                                      style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w700,),

                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      );
                    },
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
