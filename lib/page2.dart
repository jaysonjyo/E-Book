import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

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
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.orange,
                    child: CarouselSlider.builder(
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                              child: Image.asset(
                                "assets/a.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                        options: CarouselOptions(
                          height: 350.h,
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
                    padding: const EdgeInsets.only(top: 329,left: 45),
                    child: Container(
                      width: 300.w,
                      height: 57.h,
                      decoration: ShapeDecoration(shadows: [  BoxShadow(
                        color:Colors.black12,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),],
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                   child:   Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: Row(
                       children: [
                         Container(
                           width: 58.w,
                           height: 26.h,
                           decoration: ShapeDecoration(
                               color: Color(0xFFFFF8DF),
                               shape: RoundedRectangleBorder(
                                   borderRadius:
                                   BorderRadius.circular(8))),
                           child: Padding(
                             padding: const EdgeInsets.only(left: 3),
                             child: Row(
                               children: [
                                 RatingBar(
                                   filledIcon: Icons.star,size: 22,
                                   emptyIcon: Icons.star_border,
                                   onRatingChanged: (value) => debugPrint('$value'),
                                   initialRating: 1,
                                   maxRating: 1,
                                 ),
                                 SizedBox(width: 2.w,),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 1),
                                   child: Text(
                                     '4.8',
                                     style: GoogleFonts.inter(
                                         textStyle: TextStyle(
                                           color: Colors.black,
                                           fontSize: 17.sp,
                                           fontWeight: FontWeight.w500,
                                         )
                                     ),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                         SizedBox(width: 31.w,),
                         Container(
                           width: 70.w,
                           height: 26.h,
                           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                           decoration: ShapeDecoration(
                             color: Color(0xFFE2FBFA),
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
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
                         SizedBox(width: 29.w,),
                         Container(
                           width: 82.w,
                           height: 26.h,
                           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                           decoration: ShapeDecoration(
                             color: Colors.white,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                           ),
                           child: Row(
                             children: [
                               Text(
                                 '432',
                             style: GoogleFonts.inter(
                               textStyle: TextStyle(
                                   color: Color(0xFF153337),
                                   fontSize: 15.sp,
                                   fontWeight: FontWeight.w600,
                                 ),)
                               ),

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
                         )
                       ],
                     ),
                   ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270,top: 25),
                child: Text(
                  'Synopsis',
                  style: GoogleFonts.playfairDisplay(
                    textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
              SizedBox(height: 30.h,),
              SizedBox(
                width: 369.w,
                child: Text(
                  'Elspeth needs a monster. The monster might be her. Elspeth Spindle needs more than luck to stay safe in the eerie, mist-locked kingdom of Blunder—she needs a monster. She calls him the Nightmare, an ancient, mercurial spirit trapped in her head. He protects her. He keeps her secrets.\n \nBut nothing comes for free, especially magic. When Elspeth meets a mysterious highwayman on the forest road, her life takes a drastic turn. Thrust into a world of shadow and deception, she joins a dangerous quest to cure Blunder from the dark magic infecting it. And the highwayman? He just so happens to be the King’s nephew, Captain of the most dangerous men in Blunder…and guilty of high treason.\n\nTogether they must gather twelve Providence Cards—the keys to the cure. But as the stakes heighten and their undeniable attraction intensifies, Elspeth is forced to face her darkest secret yet: the Nightmare is slowly taking over her mind. And she might not be able to stop him.',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
