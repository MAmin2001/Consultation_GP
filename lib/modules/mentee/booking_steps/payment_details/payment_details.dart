import 'package:consultation_gp/modules/mentee/booking_steps/booking_details/booking_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class PaymentDetails extends StatefulWidget {
   PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override

  var selectedMethod;

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
                        radius: 15.0,
                        backgroundColor:HexColor('60CD6A'),
                        child: Icon(Icons.check_circle_outline_rounded,size: 25,color: Colors.white,),
                      ),
                      SizedBox(height: 5,),
                      Text('Details',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A'))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 3.0,
                      width: 46.0,
                      color: HexColor('60CD6A'),
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 18.0,
                        backgroundColor:HexColor('60CD6A'),

                      ),
                      SizedBox(height: 5,),
                      Text('Payment',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: HexColor('60CD6A'))),
                    ],
                  ),

                ],
              ),
              SizedBox(height:40.0),
              Row(
                children: [
                  Text('Payment Method :',style: TextStyle(fontSize: 18.0),),
                  SizedBox(width: 10.0,),
                  DropdownButton(
                    isExpanded: false,
                   borderRadius: BorderRadius.circular(10.0),
                    hint: Text('Method'),
                    items: ["Credit Card", "VISA",].map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                    onChanged: (val){
                      setState(() {
                        selectedMethod = val;
                      });
                    },
                    value: selectedMethod,
                  ),
                ],
              ),
              SizedBox(height:20.0),
              Text('Card Number:',style: TextStyle(fontSize: 18.0),),
              SizedBox(height:10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter your card number";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  hintText: "1234 5678 9123 4567",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height:20.0),
              Text('Expiry Month:',style: TextStyle(fontSize: 18.0),),
              SizedBox(height:10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter the expiry month";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  hintText: "MM",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height:20.0),
              Text('Expiry Year:',style: TextStyle(fontSize: 18.0),),
              SizedBox(height:10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter the expiry year";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  hintText: "YY",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height:20.0),
              Text('CVV:',style: TextStyle(fontSize: 18.0),),
              SizedBox(height:10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if(value!.isEmpty)
                  {
                    return "Please enter the CVV";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: Colors.blue
                      )
                  ),
                  hintText: "",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height:20.0),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 100.0,
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
                    onTap: (){ Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => BookingDetails()));;},
                  ),
                  Spacer(),
                  InkWell(
                    child: Container(
                      width: 100.0,
                      height: 45.0,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                            SizedBox(width: 5.0,),
                            Icon(Icons.arrow_forward_ios_outlined,size: 17.0,color: Colors.white),
                          ],


                        ),
                      ),
                    ),
                    onTap: (){},
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
