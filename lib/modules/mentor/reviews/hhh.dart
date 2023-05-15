// /*import 'package:flutter/material.dart';
//
// class ReviewPage extends StatefulWidget {
//   final String name;
//   final String photoUrl;
//
//   ReviewPage({required this.name, required this.photoUrl});
//
//   @override
//   _ReviewPageState createState() => _ReviewPageState();
// }
//
// class _ReviewPageState extends State<ReviewPage> {
//   double _rating = 0.0;
//   TextEditingController _reviewController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Write a Review'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 24.0,
//                   backgroundImage: NetworkImage(widget.photoUrl),
//                 ),
//                 SizedBox(width: 16.0),
//                 Text(
//                   widget.name,
//                   style: TextStyle(fontSize: 24.0),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Rating',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 8.0),
//             Row(
//               children: [
//                 Icon(Icons.star, color: Colors.amber),
//                 SizedBox(width: 8.0),
//                 Slider(
//                   value: _rating,
//                   min: 0.0,
//                   max: 5.0,
//                   divisions: 5,
//                   onChanged: (value) {
//                     setState(() {
//                       _rating = value;
//                     });
//                   },
//                 ),
//                 SizedBox(width: 8.0),
//                 Text('$_rating'),
//               ],
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Review',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 8.0),
//             TextFormField(
//               controller: _reviewController,
//               maxLines: 10,
//               decoration: InputDecoration(
//                 hintText: 'Write your review here',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // TODO: Save rating and review
//                 },
//                 child: Text('Submit'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }