import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MentorCubit,ConsultStates>(
      listener: (context,state){},
      builder: (context,state)=> Scaffold(
        appBar: AppBar(centerTitle: true,

          title:  const Text(
            'Reviews',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
            ),
          ),
          elevation: 0.0,
        ),
        body: Stack(
            children:[
              Container
                (
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
              ConditionalBuilder(
                  condition: MentorCubit.get(context).mentorDashboardModel==null||MentorCubit.get(context).mentorProfileModel==null||MentorCubit.get(context).reviewsModel==null,
                  builder: (context)=>Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(color: Colors.white,),
                        SizedBox(height: 20,),
                        Text('loading your data...',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  fallback: (context)=> SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
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
                                        backgroundImage: NetworkImage(
                                          '${MentorCubit.get(context).dashboardModel!.photo}',
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '${MentorCubit.get(context).dashboardModel!.name}',
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 3,),
                                        Text(
                                          '${MentorCubit.get(context).mentorProfileModel!.jobTitle}',
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Colors.black
                                          ),
                                        ),
                                        SizedBox(height: 3,),
                                        RatingBar(
                                          initialRating: MentorCubit.get(context).dashboardModel!.rating!.toDouble(),
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
                                    'Complete your profile: ${(MentorCubit.get(context).dashboardModel!.progress!*100).toInt()}%',
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
                                    value: MentorCubit.get(context).dashboardModel!.progress!.toDouble(),
                                    minHeight: 5.5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context,index)=>Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Stack(
                              children: [
                                Container(
                                  height: 215,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                ),
                                Container(
                                  height: 210.0,
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
                                              radius: 35.0,
                                              backgroundImage: NetworkImage(
                                                MentorCubit.get(context).reviewsModel!.data![index].mentee!.image!,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    MentorCubit.get(context).reviewsModel!.data![index].mentee!.fname!,
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  SizedBox(width: 3.0,),
                                                  Text(
                                                    MentorCubit.get(context).reviewsModel!.data![index].mentee!.lname!,
                                                    style: TextStyle(
                                                        fontSize: 17.0,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 3,),
                                              Text(
                                                'Reviewed 4 Days ago',
                                                style: TextStyle(
                                                    fontSize: 15.0,
                                                    color: Colors.black
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Text(
                                          MentorCubit.get(context).reviewsModel!.data![index].reviewText!,
                                          style: TextStyle(
                                              fontSize: 15.0
                                          ),

                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          itemCount: MentorCubit.get(context).reviewsModel!.data!.length,

                        )
                      ],
                    ),
                  ),
              )

            ]

        ),
      ),
    );
  }
}
