import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ShowMentorProfile extends StatefulWidget {

  @override
  State<ShowMentorProfile> createState() => _ShowMentorProfileState();
}

class _ShowMentorProfileState extends State<ShowMentorProfile> {
  @override
  double? _ratingValue;
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(title: Text("Mentor Profile"),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: CircleAvatar(
                    child: Icon(Icons.account_circle_rounded),
                  ),
                ),
                RatingBar(
                    initialRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    ratingWidget: RatingWidget(
                        full: const Icon(Icons.star, color: Colors.orange),
                        half: const Icon(
                          Icons.star_half,
                          color: Colors.orange,
                        ),
                        empty: const Icon(
                          Icons.star_outline,
                          color: Colors.orange,
                        )),
                    onRatingUpdate: (value) {
                      setState(() {
                        _ratingValue = value;
                      });
                    }),
                const SizedBox(height: 0.5),
                // Display the rate in number
                Container(
                  child: Text(
                    _ratingValue != null ? _ratingValue.toString() : 'Rate',
                    style: const TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(color: Colors.grey,
                        Icons.location_on),
                    Text(
                        style: TextStyle(color: Colors.grey),
                        "Cairo, Egypt"),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    "Sara Ahmed"),
                Text(
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey),
                    "Software Engineer"),
                SizedBox(height: 27,),
                Text(
                    style: TextStyle(
                        color:
                        Colors.grey,
                        fontSize: 23),
                    "Contact Me"),
                SizedBox(height: 7,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                        shape: BoxShape.circle
                      ),

                      child: IconButton(
                      onPressed: (){},
                       icon: Icon(
                         color: Colors.white,
                         size: 33,
                           Icons.chat)),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle
                      ),

                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                              color: Colors.white,
                              size: 33,
                              Icons.email)),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          shape: BoxShape.circle
                      ),

                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                              color: Colors.white,
                              size: 33,
                              Icons.call)),
                    ),

                  ],
                ),
                SizedBox(height: 5,),
                Text(
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                    "\$500 / Hour"),
                ElevatedButton(
                    onPressed: (){}, child: Text("Hire Me")),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "About Me                                                       "),
                Divider(),
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."),
                Divider(
                  color: Colors.blue,
                  thickness: 1,
                ),
                Text(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    "Personal Details                                                       "),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Gender: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "Male"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                SizedBox(width: 5.0,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.grey,
                          ),
                          "Date of Birth: "),
                    ),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child:  Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                          "05-11-1990"),
                    ),
                    SizedBox(height: 5.0,),
                  ],
                ),
                SizedBox(height: 20.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
