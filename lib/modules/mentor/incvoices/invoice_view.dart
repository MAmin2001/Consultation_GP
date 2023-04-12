import 'package:flutter/material.dart';

class InvoiceView extends StatelessWidget {
  const InvoiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Center(
        child: Text('Invoice View',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0
          ),
        ),
      ),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,

              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0),color: Colors.white,),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text('MentorQuest',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 22.0

                        ),),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order: #00124',style: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 17.0)),
                            Text('Issued: 20/07/2019',style: TextStyle(fontWeight: FontWeight.w400,
                                fontSize: 17.0)),
                          ],)
                      ],),
                      SizedBox(height: 20.0),
                      Row(children: [
                        Text('Invoice From',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                        Spacer(),
                        Text('Invoice To ',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                      ],),
                      SizedBox(height: 7.0),
                      Row(children: [
                        Text('Darren Elder',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('Walter Roberson',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                      ],),
                      SizedBox(height: 3.0),
                      Row(children: [
                        Text('806 Twin Willow Lane, Old',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('299 Star Trek Drive, Panama',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                      ],),
                      SizedBox(height: 3.0),
                      Row(children: [
                        Text('Forge,',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('City,',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                      ],),
                      SizedBox(height: 3.0),
                      Row(children: [
                        Text('Newyork, USA',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('Florida, 32405, USA',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                      ],),
                      SizedBox(height: 20.0),
                      Text('Payment Method',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                      SizedBox(height: 7.0),
                      Text('Debit Card',style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 13.5)),
                      SizedBox(height: 4.0),
                      Text('XXXXXXXXXXXX-2541',style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 13.5)),
                      SizedBox(height: 4.0),
                      Text('HDFC Bank',style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 13.5)),
                      SizedBox(height: 20.0),
                      Row(children: [
                        Text('Description',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                        Spacer(),
                        Text('Quantity',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                        Spacer(),
                        Text('VAT',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                        Spacer(),
                        Text('Total ',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 17.0)),
                      ],),
                      SizedBox(height: 7.0),
                      Row(children: [
                        Text('General Consultation',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('1',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('\$0',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('\$100',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                      ],),
                      SizedBox(height: 7.0),
                      Row(children: [
                        Text('Video Call Booking',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('1',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('\$0',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                        Spacer(),
                        Text('\$520',style: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 13.5)),
                      ],),
                      SizedBox(height: 7.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Subtotal',style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 15)),
                          SizedBox(width:130.0,),


                          Text('\$350',style: TextStyle(fontWeight: FontWeight.w400,
                              fontSize: 13.5)),

                        ],),
                      SizedBox(height: 7.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Discount',style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 15)),
                          SizedBox(width:130.0,),


                          Text("-10\%",style: TextStyle(fontWeight: FontWeight.w400,
                              fontSize: 13.5)),

                        ],),
                      SizedBox(height: 7.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Total Amout:	',style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 15)),
                          SizedBox(width:100.0,),


                          Text("\$315",style: TextStyle(fontWeight: FontWeight.w400,
                              fontSize: 13.5)),

                        ],),
                      SizedBox(height:20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Other Information',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0
                            ),
                          ),
                          SizedBox(height: 7.0,),
                          Text(' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sed dictum ligula, cursus blandit risus. Maecenas eget metus non tellus dignissim aliquam ut a ex. Maecenas sed vehicula dui, ac suscipit lacus. Sed finibus leo vitae lorem interdum, eu scelerisque tellus fermentum. Curabitur sit amet lacinia lorem. Nullam finibus pellentesque libero ',
                            maxLines: 6,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13.5,
                            ),

                          )
                        ],
                      ),

                    ],),
                ),
              ),


            ),
          ),
        ],
      ),
    );
  }
}
