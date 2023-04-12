/*import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ShowMentorProfile extends StatefulWidget {

  @override
  State<ShowMentorProfile> createState() => _ShowMentorProfileState();
}

class _ShowMentorProfileState extends State<ShowMentorProfile> {
  @override
  double? _ratingValue;
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Mentor Profile"),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: CircleAvatar(
                    child: Icon(Icons.account_circle_rounded),
                  ),
                ),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(Icons.star, color: Colors.orange),
                        half: const Icon(
                          Icons.star_half,
                          color: Colors.orange,
                        ),
                        empty: const Icon(
                          Icons.star_outline,
                          color: Colors.orange,
                        )),
                    onRatingUpdate: (value) {
                      setState(() {
                        _ratingValue = value;
                      });
                    }),
                const SizedBox(height: 0.5),
                // Display the rate in number
                Container(
                  child: Text(
                    _ratingValue != null ? _ratingValue.toString() : 'Rate',
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(color: Colors.grey,
                        Icons.location_on),
                    Text(
                        style: TextStyle(color: Colors.grey),
                        "Cairo, Egypt"),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    "Sara Ahmed"),
                Text(
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey),
                    "Software Engineer"),
                SizedBox(height: 27,),
                Text(
                    style: TextStyle(
                        color:
                        Colors.grey,
                        fontSize: 23),
                    "Contact Me"),
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                        shape: BoxShape.circle
                      ),

                      child: IconButton(
                      onPressed: (){},
                       icon: Icon(
                         color: Colors.white,
                         size: 33,
                           Icons.chat)),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle
                      ),

                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                              color: Colors.white,
                              size: 33,
                              Icons.email)),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle
                      ),

                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                              color: Colors.white,
                              size: 33,
                              Icons.call)),
                    ),

                  ],
                ),
                SizedBox(height: 5,),
                Text(
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                    "\$500 / Hour"),
                ElevatedButton(
                    onPressed: (){}, child: Text("Hire Me")),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "About Me                                                       "),
                Divider(),
                Text(
                  style: TextStyle(fontWeight: FontWeight.bold),
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "Personal Details                                                       "),
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Gender: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Male"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                SizedBox(width: 5.0,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Date of Birth: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "05-11-1990"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                SizedBox(height: 20.0,),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "Qualifications                                                         "),
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Job Title: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Software Engineer"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Category: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Software"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Skills: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Flutter"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                SizedBox(height: 1,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Years Of Experience: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "6 Years"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "Location                                                          "),
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Country: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Egypt"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "City: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Cairo"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Postal Code: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "17311"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),


              ],

            ),
          ),
        ),
      ),
    );
  }
}*/

import 'package:consultation_gp/modules/login/login_screen/login.dart';
import 'package:consultation_gp/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MentorProfile extends StatelessWidget {
  const MentorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            '    Profile',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
            ),
          ),
        ),
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

