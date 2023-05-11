import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenteeApplications extends StatelessWidget {
  const MenteeApplications({Key? key}) : super(key: key);

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
                Text('Applications',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white),),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>InkWell(
                    child: Stack(
                      children: [
                        Container(
                          height: 125,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                        ),
                        Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 35.0,
                                    ),
                                    SizedBox(width: 10.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hassanien',
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 3,),
                                        Text(
                                          'Software engineer',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:
                                  [
                                    Icon(
                                      Icons.date_range,
                                      size: 25.0,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 2.0,),
                                    Text('10/2/2022',style: TextStyle(fontSize: 16.0),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: ()
                    {
                      showDialog(context: context, builder: (context) => AlertDialog(
                        content: Text('No response ,yet'),
                        actions: [
                          TextButton(onPressed: (){Navigator.pop(context);}, child: Text("OK")),
                        ],
                      ),);
                    },
                  ),
                  separatorBuilder: (context,index)=>SizedBox(height: 16.0,),
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
