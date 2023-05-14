import 'package:flutter/material.dart';

class MenteeBookings extends StatelessWidget {
  const MenteeBookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 40.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('Bookings',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white),),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),///مرلول على مرلول ميرولش
                  shrinkWrap: true,
                  itemBuilder: (context,index)=> Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                              BoxShadow(
                                color: Colors.grey[300]!,
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(10.0),
                                  child: CircleAvatar(
                                    radius: 40.0,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hassona',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height/200,),
                                    Text(
                                      'Software Engineer',
                                      style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.black
                                      ),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height/300,),
                                  ],
                                ),
                                SizedBox(width: 90,),
                                InkWell(
                                  child: CircleAvatar(
                                    radius: 15.0,
                                    child:Icon(Icons.chat,color: Colors.white,size: 20.0,),
                                  ),
                                )
                              ],
                            ),

                            Center(
                              child: Padding(
                                padding:  EdgeInsets.only(bottom: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.date_range,
                                      size: 20.0,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width/150,),
                                    Text('10/2/2022',style: TextStyle(fontSize: 16.0),),
                                    SizedBox(width: MediaQuery.of(context).size.width/30,),
                                    Container(
                                      width: 170.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(10.0)
                                      ),
                                      child: Center(child: Text(
                                        '09:00 AM  -  10:00AM',
                                        style: TextStyle(
                                          fontSize: 13.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),

                                      )
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  separatorBuilder: (context,index)=>SizedBox(height: 20.0,),
                  itemCount: 3,

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
