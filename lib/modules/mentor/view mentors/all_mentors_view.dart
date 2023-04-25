import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllMentorsScreenView extends StatelessWidget {
  const AllMentorsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      body: Stack(
        
        
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
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.all(12),

                itemBuilder:(context,index){
                  return Container(
                    width: 175,
                    padding: EdgeInsets.all(8),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width:100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                              ),

                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            MaterialButton(onPressed: (){

                            },
                              color: Colors.blueGrey,
                              ///Color(0xffxx)
                              child:Row(
                                children: [
                                  Icon(Icons.remove_red_eye_outlined,color: Colors.white,),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                      "View"
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

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
                                "calculas, Trignometry"
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
                                Icon(Icons.access_alarm,color: Colors.grey,),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    "Available on Mon, 18 Mar"
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 4,
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
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Icon(Icons.monetization_on_outlined,color: Colors.grey,),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    " \$300 - \$500"
                                ),
                              ],
                            ),

                          ],
                        ),


                      ],
                    ),
                  );
                } ,
                separatorBuilder:(context,index){
                  return SizedBox(
                    height: 20,
                  );
                } ,
                itemCount: 5
            ),
          ),
        ],
      ),
    );
  }
}
