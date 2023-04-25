import 'package:consultation_gp/modules/mentee/mentee_profile.dart';
import 'package:consultation_gp/modules/mentee/mentor_exploration/all_mentors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ExploreMentor extends StatelessWidget {
  const ExploreMentor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu,size: 33.0,),
          onPressed: () {  },
        ),
        centerTitle: true,
        title:  const Text(
          'MENTORUEST',
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Center(
                    child: Image.asset('assets/metorquest logo.png',width: 230,height:90,
                    fit:BoxFit.fitWidth, ),
                  ),


                  ),
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                                fontWeight: FontWeight.w600,
                                fontSize: 36,
                                color: Colors.white
                            ),
                            "Welcome! "
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                            style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                                color: Color(0xB3FFFFFF)
                            ),
                            "Search for your mentor "
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                    child:Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),

                      ),
                      alignment: AlignmentDirectional(0,0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                            child: TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(000000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),

                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(00000000),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                //prefixIcon: Icon(Icons.text,color: Color(0xFF57636C),),

                              ),
                              style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  color: Colors.black
                              ),
                              maxLines: null,

                            ),
                          ),

                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                            child: Container(
                              child:ElevatedButton.icon(
                                onPressed: (){},
                                label: Text('Search',
                                  style: TextStyle(
                                      color:Colors.blue,
                                      fontSize: 17
                                  ),
                                ),
                                icon: Icon(
                                    Icons.search,
                                    color:Colors.blue
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ) ,

                  ),
                  // SizedBox(
                  //   child: SingleChildScrollView(
                  //     child:Column(
                  //       mainAxisSize: MainAxisSize.max,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Padding(padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                  //           child:Text(
                  //             'popular Mentors',
                  //             style:TextStyle(
                  //                 fontFamily: 'Lexend Deca',
                  //                 fontWeight: FontWeight.w400,
                  //                 fontSize: 22,
                  //                 color: Colors.black
                  //             ) ,
                  //           ) ,),
                  //         Padding(
                  //           padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 12),
                  //           child: Text(
                  //             'Here you are going to find the most popular mentors',
                  //             style:TextStyle(
                  //                 fontFamily: 'Lexend Deca',
                  //                 fontWeight: FontWeight.w400,
                  //                 fontSize: 22,
                  //                 color: Colors.black
                  //             ) ,
                  //           ),
                  //         ),
                  //         Expanded(child: ListView(
                  //           padding: EdgeInsets.zero,
                  //           primary: false,
                  //           shrinkWrap: true,
                  //           scrollDirection: Axis.horizontal,
                  //           children: [
                  //             Padding(
                  //               padding: EdgeInsetsDirectional.fromSTEB(12, 12, 0, 12),
                  //               child: Container(
                  //                 width: 270,
                  //                 height: 100,
                  //                 decoration: BoxDecoration(
                  //                   color: Colors.white,
                  //                   boxShadow: [
                  //                     BoxShadow(blurRadius: 4,color: Color(0x2B202529),
                  //                         offset: Offset(0,2)
                  //                     )
                  //                   ],
                  //                   borderRadius: BorderRadius.circular(12),
                  //                 ),
                  //                 child: Padding(padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                  //                   child:Column(
                  //                     mainAxisSize: MainAxisSize.max,
                  //                     mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       Row(
                  //                         mainAxisSize: MainAxisSize.max,
                  //                         children: [
                  //                           Expanded(child: Text(
                  //                             'Mahmoud Amine',
                  //                             style:TextStyle(
                  //                                 fontFamily: 'Lexend Deca',
                  //                                 fontWeight: FontWeight.w400,
                  //                                 fontSize: 16,
                  //                                 color: Colors.black
                  //                             ) ,
                  //                           ),
                  //                           ),
                  //                           Icon(Icons.star_rounded,
                  //                             color: Color(0xFF4B39EF),
                  //                             size: 24,
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //         ),
                  //       ],
                  //     ) ,
                  //   ),
                  // )
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            "Popular Mentors"
                        ),
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AllMentorsScreen(),
                          ));

                        },
                            child:  Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                "View All"
                            ),)
                      ],
                    ),
                  ),
                 SizedBox(
                   height: MediaQuery.of(context).size.height*0.46,

                   child: ListView.separated(
                     scrollDirection: Axis.horizontal,
                     //  shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                       itemBuilder:(context,index){
                         return Container(
                           width: 175,
                           padding: EdgeInsets.all(8),
                           clipBehavior: Clip.antiAliasWithSaveLayer,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(14),
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Container(
                                 height: 130,
                                 width: double.infinity,
                                 decoration: BoxDecoration(
                                   color: Colors.blue,
                                   borderRadius: BorderRadius.circular(12),
                                 ),

                               ),
                               const SizedBox(
                                 height: 10,
                               ),
                               Text(
                                   style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 18,
                                       color: Colors.black.withOpacity(0.7),
                                   ),
                                   "Mohamed Hassanein"
                               ),
                               const SizedBox(
                                 height: 10,
                               ),
                               Text(
                                   style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     fontSize: 16,
                                     color: Colors.black.withOpacity(0.4),
                                   ),
                                   "calculas,\nTrignometry"
                               ),
                               SizedBox(height: 3,),
                               Row(

                                 children: [
                                   RatingBar(
                                     initialRating: 4,
                                     direction: Axis.horizontal,
                                     allowHalfRating: true,
                                     itemCount: 5,
                                     itemSize: 25.0,
                                     ratingWidget: RatingWidget(
                                         full: const Icon(Icons.star, color: Colors.amber),
                                         half: const Icon(
                                           Icons.star_half,
                                           color: Colors.amber,
                                         ),
                                         empty: const Icon(
                                           Icons.star_outline,
                                           color: Colors.amber,
                                         )
                                     ),
                                     ignoreGestures: true,
                                     onRatingUpdate: (double value) {  },
                                   ),
                                   SizedBox(
                                     width:5 ,

                                   ),
                                   Text(

                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 16,
                                         color: Colors.black.withOpacity(0.7),
                                       ),
                                       "4.0"
                                   ),
                                 ],
                               ),
                               const SizedBox(
                                 height: 5,
                               ),
                               Row(
                                 children: [
                                   Icon(Icons.location_on,color: Colors.grey,),
                                   const SizedBox(
                                     width: 10,
                                   ),
                                   Text(
                                       style: TextStyle(
                                         fontWeight: FontWeight.w500,
                                         fontSize: 14,
                                         color: Colors.grey,
                                       ),
                                       "Paris, France"
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         );
                       } ,
                       separatorBuilder:(context,index){
                         return SizedBox(
                           width: 20,
                         );
                       } ,
                       itemCount: 5
                   ),
                 ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            "All Learning paths"
                        ),
                        TextButton(onPressed: (){},
                          child:  Text(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.blue,
                              ),
                              "View All"
                          ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.3,

                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        //  shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder:(context,index){
                          return Container(
                            width: 175,
                            padding: EdgeInsets.all(8),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 130,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),

                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                    "Cyper security"
                                ),


                              ],
                            ),
                          );
                        } ,
                        separatorBuilder:(context,index){
                          return SizedBox(
                            width: 20,
                          );
                        } ,
                        itemCount: 5
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),




                ],

              ),
            ),


            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children:
            //   [
            //     Padding(
            //       padding: const EdgeInsets.all(20.0),
            //       child: Container(
            //         height: 170.0,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10.0)
            //         ),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Row(
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.all(10.0),
            //                   child: CircleAvatar(
            //                     radius: 45.0,
            //                   ),
            //                 ),
            //                 Column(
            //                   children: [
            //                     Text(
            //                       'Mahmoud Amin',
            //                       style: TextStyle(
            //                           fontSize: 20.0,
            //                           fontWeight: FontWeight.bold
            //                       ),
            //                     ),
            //                     SizedBox(height: 3,),
            //                     Text(
            //                       'Software Engineer',
            //                       style: TextStyle(
            //                           fontSize: 15.0,
            //                           color: Colors.black
            //                       ),
            //                     ),
            //                     SizedBox(height: 3,),
            //                     RatingBar(
            //                       initialRating: 0,
            //                       direction: Axis.horizontal,
            //                       allowHalfRating: true,
            //                       itemCount: 5,
            //                       itemSize: 25.0,
            //                       ratingWidget: RatingWidget(
            //                           full: const Icon(Icons.star, color: Colors.orange),
            //                           half: const Icon(
            //                             Icons.star_half,
            //                             color: Colors.orange,
            //                           ),
            //                           empty: const Icon(
            //                             Icons.star_outline,
            //                             color: Colors.orange,
            //                           )
            //                       ),
            //                       ignoreGestures: true,
            //                       onRatingUpdate: (double value) {  },
            //                     ),
            //                   ],
            //                 )
            //               ],
            //             ),
            //             SizedBox(height: 10.0,),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 12),
            //               child: Text(
            //                 'Complete your profile: 60%',
            //                 style: TextStyle(
            //                     color: Colors.grey[500]
            //                 ),
            //               ),
            //             ),
            //             Padding(
            //               padding: const EdgeInsets.all(12.0),
            //               child: LinearProgressIndicator(
            //                 backgroundColor: Colors.grey[300],
            //                 color: Colors.blue,
            //                 value: 0.6,
            //                 minHeight: 5.5,
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //       child:
            //       Row(
            //         children: [
            //           Expanded(
            //             child: Container(
            //               height: 120.0,
            //               width: double.infinity,
            //               decoration: BoxDecoration(
            //                   color: HexColor('#dce8ff'),
            //                   borderRadius: BorderRadius.circular(10.0)
            //               ),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children:
            //                 [
            //                   Icon(
            //                     Icons.group,
            //                     size: 30.0,
            //                   ),
            //                   SizedBox(height: 5.0,),
            //                   Text(
            //                     '60',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: 25.0
            //                     ),
            //                   ),
            //                   SizedBox(height: 5.0,),
            //
            //                   Text('Members')
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(width: 9.0,),
            //           Expanded(
            //             child: Container(
            //               height: 120.0,
            //               width: double.infinity,
            //               decoration: BoxDecoration(
            //                   color: HexColor('#fcf6d4'),
            //                   borderRadius: BorderRadius.circular(10.0)
            //               ),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children:
            //                 [
            //                   Icon(
            //                     Icons.date_range,
            //                     size: 30.0,
            //                   ),
            //                   SizedBox(height: 5.0,),
            //                   Text(
            //                     '45',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: 25.0
            //                     ),
            //                   ),
            //                   SizedBox(height: 5.0,),
            //
            //                   Text('appointments')
            //                 ],
            //               ),
            //             ),
            //           ),
            //           SizedBox(width: 9.0,),
            //           Expanded(
            //             child: Container(
            //               height: 120.0,
            //               width: double.infinity,
            //               decoration: BoxDecoration(
            //                   color: HexColor('#fedde6'),
            //                   borderRadius: BorderRadius.circular(10.0)
            //               ),
            //               child: Column(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children:
            //                 [
            //                   Icon(
            //                     Icons.account_balance_wallet,
            //                     size: 30.0,
            //                   ),
            //                   SizedBox(height: 5.0,),
            //                   Row(
            //                     mainAxisAlignment: MainAxisAlignment.center,
            //                     children: [
            //                       Text(
            //                         '\$',
            //                         style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 25.0
            //                         ),
            //                       ),
            //                       Text(
            //                         '400',
            //                         style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             fontSize: 25.0
            //                         ),
            //                       ),
            //
            //                     ],
            //                   ),
            //                   SizedBox(height: 5.0,),
            //                   Text('Total Earned')
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     SizedBox(height: 20.0,),
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 20),
            //       child: Text(
            //         'Clients List',
            //         style: TextStyle(
            //             fontSize: 25.0,
            //             fontWeight: FontWeight.w400
            //         ),
            //       ),
            //     ),
            //     ListView.separated(
            //       physics: NeverScrollableScrollPhysics(),///مرلول على مرلول ميرولش
            //       shrinkWrap: true,
            //       itemBuilder: (context,index)=>Padding(
            //         padding: const EdgeInsets.all(20.0),
            //         child: Stack(
            //           children: [
            //             Container(
            //               height: 155,
            //               decoration: BoxDecoration(
            //                   color: Colors.grey[200],
            //                   borderRadius: BorderRadius.circular(10.0)
            //               ),
            //             ),
            //             Container(
            //               height: 150.0,
            //               decoration: BoxDecoration(
            //                   color: Colors.white,
            //                   borderRadius: BorderRadius.circular(10.0)
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(10.0),
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Row(
            //                       children: [
            //                         CircleAvatar(
            //
            //                           radius: 35.0,
            //                         ),
            //                         SizedBox(width: 10.0,),
            //                         Column(
            //                           crossAxisAlignment: CrossAxisAlignment.start,
            //                           children: [
            //                             Text(
            //                               'Hassanien',
            //                               style: TextStyle(
            //                                   fontSize: 17.0,
            //                                   fontWeight: FontWeight.bold
            //                               ),
            //                             ),
            //                             SizedBox(height: 3,),
            //                             Text(
            //                               'amin@gmail.com',
            //                               style: TextStyle(
            //                                   fontSize: 15.0,
            //                                   color: Colors.black
            //                               ),
            //                             ),
            //                             SizedBox(height: 3,),
            //                             Row(
            //                               children:
            //                               [
            //                                 Icon(
            //                                   Icons.date_range,
            //                                   size: 20.0,
            //                                   color: Colors.grey,
            //                                 ),
            //                                 SizedBox(width: 2.0,),
            //                                 Text('10/2/2022'),
            //                               ],
            //                             ),
            //                           ],
            //                         )
            //                       ],
            //                     ),
            //                     Row(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       children: [
            //                         IconButton(iconSize:42.0,  onPressed: (){}, icon:Icon(Icons.check_circle,color:Colors.green,)),
            //
            //                         IconButton(iconSize:42.0,  onPressed: (){}, icon:Icon(Icons.cancel,color:Colors.red,)),
            //
            //                         Container(
            //                             width: 100.0,
            //                             height: 37.0,
            //
            //                             child:  Center(
            //                                 child: ElevatedButton.icon(
            //                                   onPressed: ()
            //                                   {
            //                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>MenteeProfile()));
            //                                   },
            //                                   icon: Icon(Icons.flag),
            //                                   label: Text('Pin',
            //                                     style: TextStyle(
            //                                         fontSize: 15.0
            //                                     ),),
            //                                   style: ElevatedButton.styleFrom(
            //                                       primary:Colors.orange,
            //                                       elevation: 0.0
            //                                   ),
            //                                 )
            //                             )
            //                         ),
            //                         SizedBox(width: 20.0),
            //                         Container(
            //                             width: 100.0,
            //                             child:  ElevatedButton.icon(
            //                               onPressed: ()
            //                               {
            //                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>MenteeProfile()));
            //                               },
            //                               icon: Icon(Icons.remove_red_eye_rounded),
            //                               label: Text('View',
            //                                 style: TextStyle(
            //                                     fontSize: 15.0
            //                                 ),),
            //                               style: ElevatedButton.styleFrom(
            //                                   primary: HexColor('#b6d0e7'),
            //                                   elevation: 0.0
            //                               ),
            //                             )
            //                         ),
            //                       ],
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       separatorBuilder: (context,index)=>SizedBox(height: 5.0,),
            //       itemCount: 10,
            //
            //     ),
            //
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}




