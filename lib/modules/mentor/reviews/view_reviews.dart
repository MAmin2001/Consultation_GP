import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,

        title:   Text(
          'Reviews',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0.sp
          ),
        ),
        elevation: 0.0,
      ),
      body: Stack(
          children:[
            Container
              (
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: <Color>
                        [
                          Colors.blue,
                          Colors.white10
                        ],
                        tileMode: TileMode.mirror
                    )
                )
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(30.0.r),
                    child: Container(
                      height: 170.0.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0.r)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(10.0.r),
                                child: CircleAvatar(
                                  radius: 45.0.r,
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Mahmoud Amin',
                                    style: TextStyle(
                                        fontSize: 20.0.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 3.h,),
                                  Text(
                                    'Software Engineer',
                                    style: TextStyle(
                                        fontSize: 15.0.sp,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 3.h,),
                                  RatingBar(
                                    initialRating: 0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 25.0.r,
                                    ratingWidget: RatingWidget(
                                        full: const Icon(Icons.star, color: Colors.orange),
                                        half: const Icon(
                                          Icons.star_half,
                                          color: Colors.orange,
                                        ),
                                        empty: const Icon(
                                          Icons.star_outline,
                                          color: Colors.orange,
                                        )
                                    ),
                                    ignoreGestures: true,
                                    onRatingUpdate: (double value) {  },
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10.0.h,),
                          Padding(
                            padding:  EdgeInsets.only(left: 12.r),
                            child: Text(
                              'Complete your profile: 60%',
                              style: TextStyle(
                                  color: Colors.grey[500]
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(12.0.r),
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.grey[300],
                              color: Colors.blue,
                              value: 0.6,
                              minHeight: 5.5.h,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.0.r,vertical: 10.0.r),
                      child: Stack(
                        children: [
                          Container(
                            height: 215.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0.r)
                            ),
                          ),
                          Container(
                            height: 210.0.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0.r)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.all(10.0.r),
                                      child: CircleAvatar(
                                        radius: 35.0.r,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hassanien',
                                          style: TextStyle(
                                              fontSize: 17.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 3.h,),
                                        Text(
                                          'Reviewed 4 Days ago',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              color: Colors.black
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 20.0.r),
                                  child: Text(
                                    'comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment',
                                    style: TextStyle(
                                        fontSize: 15.0.sp
                                    ),

                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    itemCount: 10,

                  )
                ],
              ),
            ),
          ]

      ),
    );
  }
}
