import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../mentor/mentor_profile/mentor_profile.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3=false;
  String gender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,size: 28.0,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title:  const Text(
          'Search',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.0
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.filter_list, size: 28,),
              onPressed: () {
                showModalBottomSheet(
                  context: context,backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                      child: SingleChildScrollView(
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 3,
                                width: 60,
                                color: Colors.grey[300],


                              ),
                            ),
                            SizedBox(height: 30,),
                            Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                                "Fields"
                            ),
                            Divider(height: 2,color: Colors.grey,),
                            CheckboxListTile(
                              title: Text('Checkbox 1'),
                              value: _checkboxValue1,
                              onChanged: ( value) {
                                _checkboxValue1 = value!;


                              },
                            ),
                            CheckboxListTile(
                              title: Text('Checkbox 2'),
                              value: _checkboxValue2,
                              onChanged: ( value) {
                                _checkboxValue2 = value!;

                              },
                            ),
                            CheckboxListTile(
                              title: Text('Checkbox 3'),
                              value: _checkboxValue3,
                              onChanged: ( value) {

                                _checkboxValue3 = value!;

                              },
                            ),
                            SizedBox(height: 20,),

                            Text(
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                                "Gender"
                            ),
                            Divider(height: 2,color: Colors.grey,),
                            SizedBox(
                              height : 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row (
                                      children: [
                                        Radio(
                                          activeColor: Colors.blue,
                                          focusColor: Colors.blue,
                                          value: 'Male',
                                          groupValue: gender,
                                          onChanged: (String ? value) {
                                            gender= value! ;
                                          },
                                        ),
                                        Text(
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Colors.black.withOpacity(0.7),
                                            ),
                                            "Male"
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Radio(
                                          activeColor: Colors.blue,
                                          focusColor: Colors.blue,
                                          value: 'Female',
                                          groupValue: gender,
                                          onChanged: (String ? value) {
                                            gender= value! ;
                                          },
                                        ),
                                        Text(
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Colors.black.withOpacity(0.7),
                                            ),
                                            "Female"
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            MaterialButton(onPressed: (){
                              Navigator.pop(context);

                            },
                              minWidth: double.infinity,
                              color: Colors.blue,
                              child:Text(style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                                  "Apply"
                              ),

                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              )
          ],
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                          autofocus: true,
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
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: ListView.separated(

                      itemBuilder:(context,index){
                        return InkWell(onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MentorProfile(),
                          ));
                        },
                          child: Container(
                            width: 175,
                            padding: EdgeInsets.all(8),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              children: [
                                Row(
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


                                      ],
                                    ),


                                  ],
                                ),


                              ],
                            ),
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
          ),
        ],
      ),
    );
  }
}
