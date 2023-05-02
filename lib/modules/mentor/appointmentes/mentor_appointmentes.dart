import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Appointments extends StatelessWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Center(
          child: Text(
            'Appointments',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0.sp
            ),
          ),
        ),
        elevation: 0.0,
      ),
      body:
      Stack(
        children: [
          Container(
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
            child: Padding(
              padding:  EdgeInsets.all(20.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Column(
                      children: [
                        Container(
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
                                      radius: 50.0.r,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mahmoud Amin',
                                        style: TextStyle(
                                            fontSize: 17.0.sp,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height/150,),
                                      Text(
                                        'Software Engineer',
                                        style: TextStyle(
                                            fontSize: 13.0.sp,
                                            color: Colors.black
                                        ),
                                      ),
                                      SizedBox(height: MediaQuery.of(context).size.height/250,),
                                      RatingBar(
                                        initialRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 18.0.sp,
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
                              SizedBox(height: 5.h),
                              Padding(
                                padding:  EdgeInsets.only(left: 12.r),
                                child: Text(
                                  'Complete your profile: 60%',
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                    fontSize: 13.sp
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.all(12.0.r),
                                child: Container(
                                  height: 3.h,
                                  child: LinearProgressIndicator(
                                    backgroundColor: Colors.grey[300],
                                    color: Colors.blue,
                                    value: 0.6,

                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: MediaQuery.of(context).size.height/80,),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10.0.r),
                    child: Text(
                      'Clients List',
                      style: TextStyle(
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/150,),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),///مرلول على مرلول ميرولش
                    shrinkWrap: true,
                    itemBuilder: (context,index)=> SizedBox(
                      height: MediaQuery.of(context).size.height/4,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[300]!,
                                    spreadRadius: 3.r,
                                    blurRadius: 4.r,
                                    offset: Offset(0, 3),
                                  ),
                                  BoxShadow(
                                    color: Colors.grey[300]!,
                                    spreadRadius: 3.r,
                                    blurRadius: 4.r,
                                    offset: Offset(0, 3),
                                  ),
                                ],
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
                                        radius: 40.0.r,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hassona',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height/200,),
                                        Text(
                                          'amin@gmail.com',
                                          style: TextStyle(
                                              fontSize: 13.0.sp,
                                              color: Colors.black
                                          ),
                                        ),
                                        SizedBox(height: MediaQuery.of(context).size.height/300,),
                                        Row(
                                          children:
                                          [
                                            Icon(
                                              Icons.date_range,
                                              size: 18.0.sp,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(width: MediaQuery.of(context).size.width/150,),
                                            Text('10/2/2022',style: TextStyle(fontSize: 12.0.sp),),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                                Center(
                                  child: Padding(
                                    padding:  EdgeInsets.only(bottom: 15.0.r),
                                    child: Container(
                                      width: 170.0.w,
                                      height: 30.0.h,
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(10.0.r)
                                      ),
                                      child: Center(child: Text(
                                          '09:00 AM  -  10:00AM',
                                        style: TextStyle(
                                          fontSize: 13.0.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),

                                      )
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context,index)=>SizedBox(height: 20.0.h,),
                    itemCount: 10,

                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
