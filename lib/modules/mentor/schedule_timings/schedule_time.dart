import 'package:flutter/material.dart';

class ScheduleTimings extends StatefulWidget {
  ScheduleTimings({Key? key}) : super(key: key);

  @override
  State<ScheduleTimings> createState() => _ScheduleTimingsState();
}

class _ScheduleTimingsState extends State<ScheduleTimings> {
  var selectedSlot= "09:00 Am - 10:00 Am";
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

  List<String> slots=
  [
    '09:00 Am - 10:00 Am',
    '09:00 Am - 8:00 Am',
    '09:00 Am - 7:00 Am',
    '09:00 Am - 8:00 Am',
    '09:00 Am - 6:00 Am',
    '09:00 Am - 3:00 Am',
    '09:00 Am - 1:00 Am',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

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
                      onPressed: (){
                        showDialog(context: context, builder: (context) => AlertDialog(
                          actions: [
                            TextButton(onPressed: (){}, child: Text("Save"))
                          ],
                          content: Column(
                            children: [
                              DropdownButton(
                                  value: selectedSlot,
                                  items: slots.map((e) => DropdownMenuItem(
                                    child: Text("$e"),
                                    value: e,
                                  )).toList(),
                                  onChanged: (val){
                                    setState(() {
                                      selectedSlot = val.toString();
                                    });
                                  }),
                              FloatingActionButton(
                                  child: Icon(Icons.add),
                                  onPressed: (){

                                  })
                            ],
                          ),
                        ),);
                      },
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
                SizedBox(height: 10.0,),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1/0.25,
                      children: List.generate(slots.length, (index) => TimeSlot(time: slots[index])
                      )


                  ),
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}



class TimeSlot extends StatelessWidget {
  TimeSlot({Key? key,required this.time}) : super(key: key);
  late String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(time,style: TextStyle(color: Colors.white),),
          InkWell(
            child: Icon(Icons.cancel_outlined,color: Colors.white,),
            onTap: (){},

          ),
        ],
      ),
    );
  }
}
