import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScheduleTimings extends StatelessWidget {
  ScheduleTimings({Key? key}) : super(key: key);

  var fromController=TextEditingController();
  var toController=TextEditingController();

  Color cont =Colors.white;
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
    return BlocConsumer<MentorCubit,ConsultStates>(
      listener: (context,state){},
      builder: (context,state)=>Scaffold(
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
                                  color: MentorCubit.get(context).iDay==index?Colors.blue:Colors.white
                              ),
                              child:Center(
                                child: Text(
                                  days[index],
                                  style: TextStyle(
                                      color: MentorCubit.get(context).iDay==index?Colors.white:Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0
                                  ),
                                ),
                              ),
                            ),
                            onTap: ()
                            {
                              MentorCubit.get(context).daySelection(index);
                              MentorCubit.get(context).getTimes();
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
                        'Time Slots - ${day[MentorCubit.get(context).iDay]}',
                        style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.grey[700]
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: (){
                          showDialog(context: context, builder: (context) => AlertDialog(
                            actions: [
                              TextButton(
                                  onPressed: ()
                                  {
                                    MentorCubit.get(context).storeTimes
                                      (
                                        from: fromController.text.trim(),
                                        to: toController.text.trim()
                                    );
                                    Navigator.pop(context);
                                    /*MentorCubit.get(context).getTimes();*/
                                  },
                                  child: Text("Save"))
                            ],
                            content: Container(
                              height: 90.0,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('from'),
                                        SizedBox(height: 10.0,),
                                        TextFormField(
                                          keyboardType: TextInputType.datetime,
                                          validator: (value) {
                                            if(value!.isEmpty)
                                            {
                                              return "Please enter your Skills";
                                            }
                                            return null;
                                          },
                                          controller: fromController,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(),
                                            hintText: '04:30',
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20.0,),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('to'),
                                        SizedBox(height: 10.0,),
                                        TextFormField(
                                          keyboardType: TextInputType.datetime,
                                          validator: (value) {
                                            if(value!.isEmpty)
                                            {
                                              return "Please enter from time";
                                            }
                                            return null;
                                          },
                                          controller: toController,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(),
                                            hintText: '09:30',
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                        },
                        label: Text('Add',
                          style: TextStyle(
                              color:Colors.blue,
                              fontSize: 19,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        icon: Icon(
                            Icons.add,
                            color:Colors.blue,
                          size: 25.0,

                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  ConditionalBuilder(
                      condition: state is GetTimesLoadingState,
                      builder: (context)=>Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(color: Colors.white,),
                            SizedBox(height: 20,),
                            Text('loading your data',style: TextStyle(fontSize: 16.0),),
                          ],
                        ),
                      ),
                      fallback: (context)=>ConditionalBuilder(
                          condition: MentorCubit.get(context).getTimesModel!.data==null,
                          builder: (context)=>Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(child: Text('There is no data,yet',style: TextStyle(fontSize: 16.0),)),
                          ),
                          fallback:(context)=> Expanded(
                            child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1/0.25,
                                children: List.generate(MentorCubit.get(context).getTimesModel!.data!.length, (index) => TimeSlot(time: '${MentorCubit.get(context).getTimesModel!.data![index].from!} - ${MentorCubit.get(context).getTimesModel!.data![index].to!}', timeId: MentorCubit.get(context).getTimesModel!.data![index].id!,)
                                )
                            ),
                      )
                  )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





class TimeSlot extends StatelessWidget {
  TimeSlot({Key? key,required this.time,required this.timeId}) : super(key: key);
  late String time;
  late int timeId;


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
          Text(time,style: TextStyle(color: Colors.white,fontSize: 16.0),),
          InkWell(
            child: Icon(Icons.cancel_outlined,color: Colors.white,),
            onTap: ()
            {
             MentorCubit.get(context).deleteTime(timeID:timeId);
            },

          ),
        ],
      ),
    );
  }
}
