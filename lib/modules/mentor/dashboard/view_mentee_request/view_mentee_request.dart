import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:consultation_gp/layout/mentee/mentee_cubit/mentee_states.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewMenteeRequestScreen extends StatelessWidget {
  const ViewMenteeRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MentorCubit,ConsultStates>(
        listener: (context,state)=>{},
        builder: (context,state)=>Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,size: 33.0,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            title:  const Text(
              'Client Request Details ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0
              ),
            ),
            elevation: 0.0,
          ),
          body:ConditionalBuilder(
            condition: state is GetBookingDetailsLoadingState,
            builder:(context)=> Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: Colors.white,),
                  SizedBox(height: 20,),
                  Text('loading your data...',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            fallback: (context)=>Stack(
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
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        titleAndDesc(title: 'Date:', description: MentorCubit.get(context).bookingDetailsModel!.data!.createdAt!),
                        titleAndDesc(title: 'Plan type', description: MentorCubit.get(context).bookingDetailsModel!.data!.planType!),//replace with plan type
                        titleAndDesc(title: 'Brief word about me and Why am I seeking your help', description: MentorCubit.get(context).bookingDetailsModel!.data!.message1!),
                        titleAndDesc(title: 'My goal and steps I need to take', description: MentorCubit.get(context).bookingDetailsModel!.data!.message2!),
                        titleAndDesc(title: 'Areas I need guiding in', description: MentorCubit.get(context).bookingDetailsModel!.data!.message3!),
                        titleAndDesc(title: 'The biggest challenges I am facing', description: MentorCubit.get(context).bookingDetailsModel!.data!.message4!),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
    );

  }
}


Widget titleAndDesc({required String title, required String description})=> Padding(
  padding: const EdgeInsets.symmetric(vertical: 10.0),
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Text(

        title,

        style: TextStyle(

          fontWeight: FontWeight.w700,

          color: Colors.black,

          fontSize: 16.0,

        ),

      ),

      SizedBox(height: 4,),

      Text(

        description,

        style: TextStyle(

          fontWeight: FontWeight.w700,

          color: Colors.black.withOpacity(0.7),

          fontSize: 16.0,

        ),

      ),

    ],

  ),
);