import 'package:consultation_gp/modules/mentee/booking_steps/available_times/available_times.dart';
import 'package:consultation_gp/modules/mentee/booking_steps/payment_details/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0,bottom: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: HexColor('60CD6A'),
                        child: Icon(Icons.check_circle_outline_rounded,size: 25,color: Colors.white,),

                      ),
                      SizedBox(height: 5,),
                      Text('Appointment',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A')),)
                    ],
                  ),
                  SizedBox(width:7.0 ,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 3.0,
                      width: 46.0,
                      color:HexColor('60CD6A'),
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 18.0,
                        backgroundColor:HexColor('60CD6A'),
                      ),
                      SizedBox(height: 5,),
                      Text('Details',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A'))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 3.0,
                      width: 46.0,
                      color: Colors.grey[300],
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.grey[300],

                      ),
                      SizedBox(height: 5,),
                      Text('Payment',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold)),
                    ],
                  ),

                ],
              ),
              SizedBox(height:40.0),
              Text('Tell us about yourself and why youre seeking mentorship ?',
                style: TextStyle(
                    fontSize: 18.0,
                  color: Colors.black
                ),
              ),
              SizedBox(height:10.0),
              TextFormField(
                maxLines: 5,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please tell us about yourself";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey[700]!
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),

                ),
              ),
              SizedBox(height: 20.0,),
              Text('Whats your goal, and what steps do you need to take to get there?',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black
                ),
              ),
              SizedBox(height:10.0),
              TextFormField(
                maxLines: 5,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please tell us about your goal";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey[700]!
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text('What specific areas do you need guidance or support in?',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black
                ),
              ),
              SizedBox(height:10.0),
              TextFormField(
                maxLines: 5,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please tell us about the specific areas";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey[700]!
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text('What are the biggest challenges youre facing, and how can your mentor help you overcome them?',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black
                ),
              ),
              SizedBox(height:10.0),
              TextFormField(
                maxLines: 5,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please tell us about ypur biggist challenges";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey[700]!
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),

                ),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 80.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back_ios_outlined,size: 17.0,color: Colors.white),
                            SizedBox(width: 5.0,),
                            Text('Back',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => AvailableTimes()));},
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      width: 80.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Next',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                            SizedBox(width: 5.0,),
                            Icon(Icons.arrow_forward_ios_outlined,size: 17.0,color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    onTap: (){Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => PaymentDetails()));},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
