import 'package:consultation_gp/modules/mentor/mentor_profile/mentor_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(  iconSize: 30,
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MentorProfile(),));
                      }),
                ),
                title: const Center(child: Text('Create your plan')),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Form(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 590,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 580,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                    [
                                      Center(child:const Text('Standard plan',
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )),
                                      SizedBox(height: 20.0),
                                      Text('Number of sessions (per month) : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      TextFormField(
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
                                          hintText: "2 sessions",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.0),
                                      Text('Chat response time in : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      TextFormField(
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
                                      SizedBox(height: 15.0),
                                      Text('Plan description : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold

                                        ),
                                      ),
                                      SizedBox(height: 10.0),
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
                                      SizedBox(height: 15.0),
                                      Center(
                                        child: Text('Price',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: SizedBox(
                                          width: 240,
                                          child: DropdownButtonFormField<String>(
                                            value: selectedprice,
                                            items: prices.map((item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(item,style: TextStyle(fontSize: 24),),
                                            ))
                                                .toList(),
                                            onChanged: (item)=>setState(()=>selectedprice = item),
                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                  borderSide: BorderSide(width: 3,color: Colors.blue),
                                                )
                                            ),

                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Stack(
                          children: [
                            Container(
                              height: 590,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 580,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                    [
                                      Center(child:const Text('Pro plan',
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )),
                                      SizedBox(height: 20.0),
                                      Text('Number of sessions (per month) : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      TextFormField(
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
                                          hintText: "2 sessions",
                                          hintStyle: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.0),
                                      Text('Chat response time in : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      TextFormField(
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
                                      SizedBox(height: 15.0),
                                      Text('Plan description : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold

                                        ),
                                      ),
                                      SizedBox(height: 10.0),
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
                                      SizedBox(height: 15.0),
                                      Center(
                                        child: Text('Price',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Center(
                                        child: SizedBox(
                                          width: 240,
                                          child: DropdownButtonFormField<String>(
                                            value: selectedprice,
                                            items: prices.map((item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(item,style: TextStyle(fontSize: 24),),
                                            ))
                                                .toList(),
                                            onChanged: (item)=>setState(()=>selectedprice = item),
                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                  borderSide: BorderSide(width: 3,color: Colors.blue),
                                                )
                                            ),

                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Stack(
                          children: [
                            Container(
                              height: 360,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 350,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                    [
                                      Center(child:const Text('Per Session plan',
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )),
                                      SizedBox(height: 15.0),
                                      Text('Plan description : ',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold

                                        ),
                                      ),
                                      SizedBox(height: 10.0),
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
                                      SizedBox(height: 15.0),
                                      Center(
                                        child: Text('Price',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: SizedBox(
                                          width: 240,
                                          child: DropdownButtonFormField<String>(
                                            value: selectedprice,
                                            items: prices.map((item) => DropdownMenuItem<String>(
                                              value: item,
                                              child: Text(item,style: TextStyle(fontSize: 24),),
                                            ))
                                                .toList(),
                                            onChanged: (item)=>setState(()=>selectedprice = item),
                                            decoration: InputDecoration(
                                                enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(12),
                                                  borderSide: BorderSide(width: 3,color: Colors.blue),
                                                )
                                            ),

                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 45.0,
                          width: 120,
                          child: ElevatedButton
                            (
                              onPressed: (){},
                              child: Center(
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),
                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),


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

















