import 'package:consultation_gp/modules/mentee/booking_steps/available_times/available_times.dart';
import 'package:consultation_gp/modules/mentee/booking_steps/booking_details/booking_details.dart';
import 'package:consultation_gp/modules/mentee/booking_steps/payment_details/payment_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class AppointmentCost extends StatelessWidget {
  const AppointmentCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0,bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 14.0,
                      backgroundColor: HexColor('60CD6A'),
                      child: Icon(Icons.check_circle_outline_rounded,size: 25,color: Colors.white,),

                    ),
                    SizedBox(height: 5,),
                    Text('Appointment',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A')),)
                  ],
                ),
                SizedBox(width:5.0 ,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    height: 3.0,
                    width: 40.0,
                    color:HexColor('60CD6A'),
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 14.0,
                      backgroundColor:HexColor('60CD6A'),
                      child: Icon(Icons.check_circle_outline_rounded,size: 25,color: Colors.white,),
                    ),
                    SizedBox(height: 5,),
                    Text('Details',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A'))),
                  ],
                ),
                SizedBox(width:5.0 ,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    height: 3.0,
                    width: 46.0,
                    color:HexColor('60CD6A'),
                  ),
                ),
                SizedBox(width:5.0 ,),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 14.0,
                      backgroundColor:HexColor('60CD6A'),
                    ),
                    SizedBox(height: 5,),
                    Text('Cost',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A'))),
                  ],
                ),
                SizedBox(width:5.0 ,),
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
                      radius: 14.0,
                      backgroundColor: Colors.grey[300],

                    ),
                    SizedBox(height: 5,),
                    Text('Payment',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold)),
                  ],
                ),

              ],
            ),
            SizedBox(height:40.0),
            Text('Booking Summery',
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0,),
            costInfoItem(title: 'Date', value: '15 may 2023'),
            costInfoItem(title: 'Time', value: '10:00 Am'),
            costInfoItem(title: 'Consulting Fee', value: '\$80'),
            Divider(height: 1.5, color: Colors.grey,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('80\$',
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),
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
                      MaterialPageRoute(builder: (context) => BookingDetails()));},
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
                          Text('Pay',style: TextStyle(color: Colors.white,fontSize: 18.0),),
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
    );
  }
}


Widget costInfoItem({required String title, required String value})=>Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,
        style: TextStyle(
            fontSize: 17.0,
            color: Colors.black,
            fontWeight: FontWeight.w500
        ),
      ),
      Text(value,
        style: TextStyle(
            fontSize: 17.0,
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.w400
        ),
      ),
    ],
  ),
);