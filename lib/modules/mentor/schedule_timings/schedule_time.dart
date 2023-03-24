import 'package:flutter/material.dart';

class ScheduleTimings extends StatefulWidget {
   ScheduleTimings({Key? key}) : super(key: key);

  @override
  State<ScheduleTimings> createState() => _ScheduleTimingsState();
}

class _ScheduleTimingsState extends State<ScheduleTimings> {
  Color cont =Colors.white;
  int i = 0;
  List <String> days=
  [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat'
  ];

  List<String> day=
  [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,size: 33.0,),
          onPressed: () {  },
        ),
        title:  const Text(
          '            Schedule Timing',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0
          ),
        ),
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Select A Day',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),

                ),
                SizedBox(height: 20.0,),
                Container(
                    height: 105.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder:(context,index)=>
                            GestureDetector(
                             child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: i==index?Colors.blue:Colors.white
                            ),
                              child:Center(
                              child: Text(
                                days[index],
                                style: TextStyle(
                                    color: i==index?Colors.white:Colors.grey[700],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.0
                                ),
                              ),
                            ),
                          ),
                              onTap: ()
                              {
                                setState(() {
                                  i=index;
                                });

                              },
                        ),
                        separatorBuilder:(context,index)=>SizedBox(width: 10),
                        itemCount:7 ,
                    ),
                  ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time Slots - ${day[i]}',
                      style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.grey[700]
                      ) ,
                    ),
                    ElevatedButton.icon(
                        onPressed: (){},
                        label: Text('Edit',
                        style: TextStyle(
                            color:Colors.blue,
                          fontSize: 17
                        ),
                        ),
                        icon: Icon(
                            Icons.edit,
                            color:Colors.blue
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white
                        ),
                    ),
                  ],
                ),
              ],
            ),
          )


        ],
      ),

    );
  }
}
