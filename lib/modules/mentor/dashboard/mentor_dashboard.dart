import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_cubit.dart';
import 'package:consultation_gp/layout/mentor/mentor_cubit/mentor_states.dart';
import 'package:consultation_gp/modules/mentee/mentee_profile.dart';
import 'package:consultation_gp/modules/mentor/dashboard/view_mentee_request/view_mentee_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

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
            '                Dashboard',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0
            ),
          ),
          elevation: 0.0,
        ),
        body:
        Stack(
          children: [
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
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
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Mahmoud Amin',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 3,),
                                  Text(
                                    'Software Engineer',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 3,),
                                  RatingBar(
                                    initialRating: 0,
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
                              'Complete your profile: 60%',
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
                              value: 0.6,
                              minHeight: 4.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child:
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 120.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: HexColor('#dce8ff'),
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Icon(
                                  Icons.group,
                                  size: 30.0,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  '60',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0
                                  ),
                                ),
                                SizedBox(height: 5.0,),

                                Text('Members')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 9.0,),
                        Expanded(
                          child: Container(
                            height: 120.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: HexColor('#fcf6d4'),
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Icon(
                                  Icons.date_range,
                                  size: 30.0,
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  '45',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0
                                  ),
                                ),
                                SizedBox(height: 5.0,),

                                Text('Appointments')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 9.0,),
                        Expanded(
                          child: Container(
                            height: 120.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: HexColor('#fedde6'),
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                Icon(
                                  Icons.account_balance_wallet,
                                  size: 30.0,
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0
                                      ),
                                    ),
                                    Text(
                                      '400',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5.0,),
                                Text('Total Earned')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Clients List',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),///مرلول على مرلول ميرولش
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          Container(
                            height: 175,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                          Container(
                            height: 170.0,
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
                                          Row(
                                            children: [
                                              Text(
                                                'Hassanien',
                                                style: TextStyle(
                                                    fontSize: 17.0,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              SizedBox(width:140.0 ),
                                              IconButton(
                                                  onPressed: ()
                                                  {
                                                    MentorCubit.get(context).changePinIcon(index);
                                                  },
                                                  icon: MentorCubit.get(context).isPinned&&MentorCubit.get(context).iPin==index?Icon(Icons.push_pin_rounded,size: 22.0,color: Colors.blue,):Icon(Icons.push_pin_outlined,size: 22.0,color: Colors.grey,)
                                              )
                                            ],
                                          ),
                                          //SizedBox(height: 3,),
                                          Text(
                                            'amin@gmail.com',
                                            style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.black
                                            ),
                                          ),
                                          SizedBox(height: 3,),
                                          Row(
                                            children:
                                            [
                                              Icon(
                                                Icons.date_range,
                                                size: 20.0,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(width: 2.0,),
                                              Text('10/2/2022'),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 3,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(iconSize:42.0,  onPressed: (){}, icon:Icon(Icons.cancel,color:Colors.red,)),
                                      IconButton(iconSize:42.0,  onPressed: (){}, icon:Icon(Icons.check_circle,color:Colors.green,)),
                                      SizedBox(width: 70.0),
                                      Container(
                                          width: 100.0,
                                          child:  ElevatedButton.icon(
                                            onPressed: ()
                                            {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MenteeProfile()));
                                            },
                                            icon: Icon(Icons.remove_red_eye_rounded),
                                            label: Text('View',
                                              style: TextStyle(
                                                  fontSize: 15.0
                                              ),),
                                            style: ElevatedButton.styleFrom(
                                                primary: HexColor('#b6d0e7'),
                                                elevation: 0.0
                                            ),
                                          )
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context,index)=>SizedBox(height: 5.0,),
                    itemCount: 10,

                  ),

                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}


/// هتبعت هنا ال index بتاع الكارت وااول ما يدوس على الصح تقبله من خلال الاندكس وكذلك مع ال كانسل
Widget clientRequestCard({required context})=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Stack(
    children: [
      Container(
        height: 155,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
      Container(
        height: 150.0,
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
                        'amin@gmail.com',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 3,),
                      Row(
                        children:
                        [
                          Icon(
                            Icons.date_range,
                            size: 20.0,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 2.0,),
                          Text('10/2/2022'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(iconSize:42.0,  onPressed: (){}, icon:Icon(Icons.check_circle,color:Colors.green,)),

                  IconButton(iconSize:42.0,  onPressed: (){
                    cancelDialog(context: context);
                  }, icon:Icon(Icons.cancel,color:Colors.red,)),

                  Container(
                      width: 100.0,
                      height: 37.0,

                      child:  Center(
                          child: ElevatedButton.icon(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MenteeProfile()));
                            },
                            icon: Icon(Icons.flag),
                            label: Text('Pin',
                              style: TextStyle(
                                  fontSize: 15.0
                              ),),
                            style: ElevatedButton.styleFrom(
                                primary:Colors.orange,
                                elevation: 0.0
                            ),
                          )
                      )
                  ),
                  SizedBox(width: 20.0),
                  Container(
                      width: 100.0,
                      child:  ElevatedButton.icon(
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewMenteeRequestScreen()));
                        },
                        icon: Icon(Icons.remove_red_eye_rounded),
                        label: Text('View',
                          style: TextStyle(
                              fontSize: 15.0
                          ),),
                        style: ElevatedButton.styleFrom(
                            primary: HexColor('#b6d0e7'),
                            elevation: 0.0
                        ),
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  ),
);


Future<dynamic> cancelDialog({
  required context,

}) => showDialog(
  context: context,
  builder: (context){
    return AlertDialog(


      contentPadding: const EdgeInsets.all(0.0),
      content:  Container(
        height: 300,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,),
                ),
                label:Text( "Enter the cancellation reason"),
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
              onTap: ()
              {

              },
            ),

            SizedBox(height: 20,),
            Container(
                width: 100.0,
                height: 37.0,

                child:  Center(
                    child: ElevatedButton.icon(
                      onPressed: ()
                      {

                      },
                      icon: Icon(Icons.send),
                      label: Text('Send',
                        style: TextStyle(
                            fontSize: 15.0
                        ),),
                      style: ElevatedButton.styleFrom(
                          primary:Colors.blue,
                          elevation: 0.0
                      ),
                    )
                )
            ),
          ],
        ),
      ),
    );
  },
);



