import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/modules/mentee/booking_steps/available_times/available_times.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ViewMentorProfile extends StatelessWidget {
  const ViewMentorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: ()
              {
                CacheHelper.sharedPreferences.remove('token').then((value) =>
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>ConsultLogin()), (route) => false));
              },
              child: Text('Log out',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0
                ),
              )
          )
        ],
        elevation: 0.0,
      ),
      body: Stack(
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
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: 215.0,
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
                            padding: const EdgeInsets.only(right:12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Chat Me',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                                SizedBox(width: 8.0,),
                                InkWell(
                                  child: CircleAvatar(
                                    radius: 15.0,
                                  child:Icon(Icons.chat,color: Colors.white,size: 20.0,),
                                  ),
                                )
                              ],
                            ),
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
                  Container(
                    height: 550.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Plans',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)

                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                textAlign: TextAlign.center,
                                                '\$240',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 35.0,
                                                    color: HexColor('41a980')
                                                ),
                                              ),
                                              SizedBox(width: 8,),
                                              Text(
                                                textAlign: TextAlign.end,
                                                '/month',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30,),
                                          Text(
                                            'Standard Plan',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),
                                              "Keep me on retainer as we meet sporadically, as your schedule allows it."),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                                            child: Container(
                                              height: 1.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[300]
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle,size: 33.0,color: HexColor('e1f4ed'),),
                                                  Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Icon(Icons.check,color: HexColor('7cb69e'),size: 27.0,),
                                                  ),

                                                ],
                                              ),
                                              SizedBox(width:16 ,),
                                              Column(
                                                children: [
                                                  Text('2 Sessions per month',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                                  Text('Every session will be 1 hour',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500, color: Colors.grey),),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10.0,),
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle,size: 33.0,color: HexColor('e1f4ed'),),
                                                  Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Icon(Icons.check,color: HexColor('7cb69e'),size: 27.0,),
                                                  ),

                                                ],
                                              ),
                                              SizedBox(width:16 ,),
                                              Text('Unlimited Q&A chat',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          SizedBox(height: 10.0,),
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle,size: 33.0,color: HexColor('e1f4ed'),),
                                                  Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Icon(Icons.check,color: HexColor('7cb69e'),size: 27.0,),
                                                  ),

                                                ],
                                              ),
                                              SizedBox(width:16 ,),
                                              Text('Response time in 24 hours',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          SizedBox(height: 30,),
                                          Container(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                  onPressed: (){Navigator.pushReplacement(context,
                                                      MaterialPageRoute(builder: (context) => AvailableTimes()));;},
                                                  child: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)))
                                        ],
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)

                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                textAlign: TextAlign.center,
                                                '\$450',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 35.0,
                                                    color: HexColor('41a980')
                                                ),
                                              ),
                                              SizedBox(width: 8,),
                                              Text(
                                                textAlign: TextAlign.end,
                                                '/month',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30,),
                                          Text(
                                            'ProPlan',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),
                                              "Keep me on retainer as we meet sporadically, as your schedule allows it."),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                                            child: Container(
                                              height: 1.0,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[300]
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle,size: 33.0,color: HexColor('e1f4ed'),),
                                                  Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Icon(Icons.check,color: HexColor('7cb69e'),size: 27.0,),
                                                  ),

                                                ],
                                              ),
                                              SizedBox(width:16 ,),
                                              Column(
                                                children: [
                                                  Text('4 Sessions per month',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                                  Text('Every session will be 1 hour ',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500, color: Colors.grey),),
                                                ],
                                              ),                                            ],
                                          ),
                                          SizedBox(height: 10.0,),
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle,size: 33.0,color: HexColor('e1f4ed'),),
                                                  Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Icon(Icons.check,color: HexColor('7cb69e'),size: 27.0,),
                                                  ),

                                                ],
                                              ),
                                              SizedBox(width:16 ,),
                                              Text('Unlimited Q&A chat',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          SizedBox(height: 10.0,),
                                          Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Icon(Icons.circle,size: 33.0,color: HexColor('e1f4ed'),),
                                                  Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Icon(Icons.check,color: HexColor('7cb69e'),size: 27.0,),
                                                  ),

                                                ],
                                              ),
                                              SizedBox(width:16 ,),
                                              Text('Response time in 12 hours',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
                                          SizedBox(height: 30,),
                                          Container(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                  onPressed: (){Navigator.pushReplacement(context,
                                                      MaterialPageRoute(builder: (context) => AvailableTimes()));;},
                                                  child: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)))
                                        ],
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Container(
                                    width: 300,
                                    height: 450,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)

                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                textAlign: TextAlign.center,
                                                '\$200',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 35.0,
                                                    color: HexColor('41a980')
                                                ),
                                              ),
                                              SizedBox(width: 8,),
                                              Text(
                                                textAlign: TextAlign.end,
                                                '/month',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15.0
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 30,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Per Session Plan',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25.0
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10,),
                                          Text(
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),
                                              "Keep me on retainer as we meet sporadically, as your schedule allows it."),

                                          SizedBox(height: 30,),
                                          Container(
                                              width: double.infinity,
                                              child: ElevatedButton(
                                                  onPressed: (){Navigator.pushReplacement(context,
                                                      MaterialPageRoute(builder: (context) => AvailableTimes()));;},
                                                  child: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),)))

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )


                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 20.0,),
                  Stack(
                    children: [
                      Container(
                        height: 155.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('About Me',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0
                                ),
                              ),
                              SizedBox(height: 7.0,),
                              Text(' I am a software engineer  I am a software engineer  I am a software engineer  I am a software engineer  I am a software engineer  I am a software engineer  I am a software engineer  I am a software engineer  ',
                                maxLines: 5,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0,
                                ),

                              )
                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Stack(
                    children: [
                      Container(
                        height: 175.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Personal Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#a7d5fe'),
                                    child:Icon(
                                      Icons.person_outline_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Gender',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('Male',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                height: 1.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#a0aaff'),
                                    child:Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Date Of birth',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('01-02-2000',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),


                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Stack(
                    children: [
                      Container(
                        height: 155.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Skills',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0
                                ),
                              ),
                              SizedBox(height: 7.0,),
                              Text('Flutter , Dart , PHP , Larvel , Angular , Sql , MySql , Firebase , APIs , Flutter , Dart , PHP , Larvel , Angular , Sql , MySql , Firebase , APIs ,  Flutter , Dart , PHP , Larvel , Angular , Sql ',
                                maxLines: 4,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0,
                                ),

                              )
                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Stack(
                    children: [
                      Container(
                        height: 245.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        height: 240.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Qualification',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#e77751'),
                                    child:Icon(
                                      Icons.maps_home_work_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Company',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('Eraasoft',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                height: 1.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#fbcd14'),
                                    child:Icon(
                                      Icons.star_outline_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Experience',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('Senior',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                height: 1.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#e0a144'),
                                    child:Icon(
                                      Icons.numbers_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Years Of Experience',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('6 years in Software Engineering',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),


                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Stack(
                    children: [
                      Container(
                        height: 310.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      Container(
                        height: 305.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Location',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#8660d2'),
                                    child:Icon(
                                      Icons.flag,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Country',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('Egypt',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                height: 1.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#ff9cab'),
                                    child:Icon(
                                      Icons.location_city_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('City',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('Cairo',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                height: 1.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#a8b7cd'),
                                    child:Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Address',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('5-Ahmed Oraby street',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                height: 1.0,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300]
                                ),
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 22.0,
                                    backgroundColor: HexColor('#326172'),
                                    child:Icon(
                                      Icons.markunread_mailbox_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Zip Code',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 3.0,),
                                      Text('641001',
                                        style: TextStyle(
                                          fontSize: 17.0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),


                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}