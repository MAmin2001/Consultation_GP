import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Appointments extends StatelessWidget {
  const Appointments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,size: 33.0,),
          onPressed: () {  },
        ),
        title:  const Text(
          '                Appointments',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 170.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 45.0,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  'Mahmoud Amin',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 3,),
                                Text(
                                  'Software Engineer',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 3,),
                                RatingBar(
                                  initialRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 25.0,
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
                        SizedBox(height: 10.0,),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'Complete your profile: 60%',
                            style: TextStyle(
                                color: Colors.grey[500]
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.grey[300],
                            color: Colors.blue,
                            value: 0.6,
                            minHeight: 5.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Clients List',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),///مرلول على مرلول ميرولش
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 155,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                        Container(
                          height: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: CircleAvatar(
                                      radius: 35.0,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hassona',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Text(
                                        'amin@gmail.com',
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.black
                                        ),
                                      ),
                                      SizedBox(height: 3,),
                                      Row(
                                        children:
                                        [
                                          Icon(
                                            Icons.date_range,
                                            size: 20.0,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 2.0,),
                                          Text('10/2/2022'),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Center(
                                child: Container(
                                  width: 200.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(8.0)
                                  ),
                                  child: Center(child: Text(
                                      '09:00 AM  -  10:00AM',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),

                                  )
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context,index)=>SizedBox(height: 5.0,),
                  itemCount: 10,

                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}