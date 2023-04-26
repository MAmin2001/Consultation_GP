import 'package:consultation_gp/modules/mentor/mentor_profile/mentor_profile.dart';
import 'package:consultation_gp/modules/mentor/profile_setup/profile_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreatePlan extends StatefulWidget {
  CreatePlan({Key? key}) : super(key: key);

  @override
  State<CreatePlan> createState() => _CreatePlanState();
}

class _CreatePlanState extends State<CreatePlan> {
  List<String> prices =[
    '100',
    '150',
    '200',
    '250',
    '300',
    '350',
    '400',
    '450',
    '500',
  ];
  String? selectedprice = '100';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              appBar: AppBar(
                leading: IconButton(  iconSize: 25.0.sp,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileSetup(),));
                    }),
                title:  Text('Create your plan',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0.sp
                ),
                ),
                centerTitle: true,
              ),
              body: Padding(
                padding:  EdgeInsets.all(20.0.r),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(5.0.r),
                          child: SizedBox(
                            height: 580,
                            child: Column(
                              children: [
                                Container(
                                  //height: 580,
                                  //width: double.infinity.w,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 3.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 3),
                                        ),
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 3.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0.r)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.all(10.0.r),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:
                                      [
                                        Center(child: Text('Standard plan',
                                          style: TextStyle(
                                              fontSize: 25.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )),
                                        SizedBox(height:MediaQuery.of(context).size.height/30),
                                        Text('Number of sessions (per month) : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Container(
                                          height: 45.0.h,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Please enter Num of sessions";
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10.r),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey
                                                  )
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10.r),
                                                  borderSide: BorderSide(
                                                      color: Colors.blue
                                                  )
                                              ),
                                              hintText: "2 sessions",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Text('Chat response time in : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Container(
                                          height: 45.0.h,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Please enter response time";
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
                                              hintText: "3 days",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Text('Plan description : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold

                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        TextFormField(
                                          maxLines: 5,
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if(value!.isEmpty)
                                            {
                                              return "Please enter plan description";
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
                                            hintText: " apply for my plan and improve your skills ",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Center(
                                          child: Text('Price',
                                            style: TextStyle(
                                                fontSize: 15.0.sp,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Padding(
                                          padding:  EdgeInsets.only(bottom: 5.0.r),
                                          child: Center(
                                            child: SizedBox(
                                              width: 240,
                                              child: DropdownButtonFormField<String>(
                                                value: selectedprice,
                                                items: prices.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item,style: TextStyle(fontSize: 20.sp),),
                                                ))
                                                    .toList(),
                                                onChanged: (item)=>setState(()=>selectedprice = item),
                                                decoration: InputDecoration(
                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10),
                                                      borderSide: BorderSide(width: 3,color: Colors.blue),
                                                    ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(width: 3,color: Colors.blue),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height/100),
                        Padding(
                          padding: EdgeInsets.all(5.0.r),
                          child: SizedBox(
                            height: 580,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 3.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 3),
                                        ),
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 3.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0.r)
                                  ),
                                  child: Padding(
                                    padding:EdgeInsets.all(10.0.r),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:
                                      [
                                        Center(child:Text('Pro plan',
                                          style: TextStyle(
                                              fontSize: 25.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )),
                                        SizedBox(height:MediaQuery.of(context).size.height/30),
                                        Text('Number of sessions (per month) : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Container(
                                          height: 45.0.h,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Please enter Num of sessions";
                                              }
                                              return null;
                                            },
                                            decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10.r),
                                                  borderSide: BorderSide(
                                                      color: Colors.grey
                                                  )
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10.r),
                                                  borderSide: BorderSide(
                                                      color: Colors.blue
                                                  )
                                              ),
                                              hintText: "2 sessions",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Text('Chat response time in : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Container(
                                          height: 45.0.h,
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            validator: (value) {
                                              if(value!.isEmpty)
                                              {
                                                return "Please enter response time";
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
                                              hintText: "3 days",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Text('Plan description : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold

                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        TextFormField(
                                          maxLines: 5,
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if(value!.isEmpty)
                                            {
                                              return "Please enter plan description";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10.r),
                                                borderSide: BorderSide(
                                                    color: Colors.grey
                                                )
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10.r),
                                                borderSide: BorderSide(
                                                    color: Colors.blue
                                                )
                                            ),
                                            hintText: " apply for my plan and improve your skills ",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Center(
                                          child: Text('Price',
                                            style: TextStyle(
                                                fontSize: 15.0.sp,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Padding(
                                          padding:  EdgeInsets.all(5.0.r),
                                          child: Center(
                                            child: SizedBox(
                                              width: 240,
                                              child: DropdownButtonFormField<String>(
                                                value: selectedprice,
                                                items: prices.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item,style: TextStyle(fontSize: 20.sp),),
                                                ))
                                                    .toList(),
                                                onChanged: (item)=>setState(()=>selectedprice = item),
                                                decoration: InputDecoration(
                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(12),
                                                      borderSide: BorderSide(width: 3,color: Colors.blue),
                                                    ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(width: 3,color: Colors.blue),
                                                  ),
                                                ),

                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height/100),
                        Padding(
                          padding:  EdgeInsets.all(5.0.r),
                          child: SizedBox(
                            height: 370,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 3.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 3),
                                        ),
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 3.r,
                                          blurRadius: 4.r,
                                          offset: Offset(0, 3),
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0.r)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0.r),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:
                                      [
                                        Center(child: Text('Per Session plan',
                                          style: TextStyle(
                                              fontSize: 25.0.sp,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )),
                                        SizedBox(height:MediaQuery.of(context).size.height/30),
                                        Text('Plan description : ',
                                          style: TextStyle(
                                              fontSize: 15.0.sp,
                                              fontWeight: FontWeight.bold

                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        TextFormField(
                                          maxLines: 5,
                                          keyboardType: TextInputType.number,
                                          validator: (value) {
                                            if(value!.isEmpty)
                                            {
                                              return "Please enter plan description";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10.0.r),
                                                borderSide: BorderSide(
                                                    color: Colors.grey
                                                )
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10.0.r),
                                                borderSide: BorderSide(
                                                    color: Colors.blue
                                                )
                                            ),
                                            hintText: " apply for my plan and improve your skills ",
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/40),
                                        Center(
                                          child: Text('Price',
                                            style: TextStyle(
                                                fontSize: 15.0.sp,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:MediaQuery.of(context).size.height/60),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 5.0.r),
                                          child: Center(
                                            child: SizedBox(
                                              width: 240,
                                              child: DropdownButtonFormField<String>(
                                                value: selectedprice,
                                                items: prices.map((item) => DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Text(item,style: TextStyle(fontSize: 20.sp),),
                                                ))
                                                    .toList(),
                                                onChanged: (item)=>setState(()=>selectedprice = item),
                                                decoration: InputDecoration(
                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10.r),
                                                      borderSide: BorderSide(width: 3,color: Colors.blue),
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10.r),
                                                      borderSide: BorderSide(width: 3,color: Colors.blue),
                                                    )
                                                ),

                                              ),
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height/100),
                        Container(
                          height: 40.0.h,
                          width: 90.w,
                          child: ElevatedButton
                            (
                              onPressed: (){},
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0.sp
                                  ),
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );


  }
}
// class price extends State< CreatePlan>{
//   List<String> prices =[
//     '100',
//     '150',
//     '200',
//     '250',
//     '300',
//     '350',
//     '400',
//     '450',
//     '500',
//   ];
//   String? selectedprice = '100';
//   @override
//   Widget build(BuildContext context)=> Scaffold(
//     body: Center(
//       child: SizedBox(
//         width: 240,
//         child: DropdownButtonFormField<String>(
//           value: selectedprice,
//           items: prices.map((item) => DropdownMenuItem<String>(
//             value: item,
//             child: Text(item,style: TextStyle(fontSize: 24),),
//           ))
//             .toList(),
//           onChanged: (item)=>setState(()=>selectedprice = item),
//           decoration: InputDecoration(
//             enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(12),
//               borderSide: BorderSide(width: 3,color: Colors.blue),
//             )
//           ),
//
//         ),
//       ),
//     ),
//   );
// }

















