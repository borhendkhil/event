// import 'package:far7etna/components/components.dart';
// import 'package:flutter/material.dart';

// class AdditionBox extends StatelessWidget {
//   final NewAddition addition;
//   const AdditionBox({
//     Key? key,
//     required this.addition,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       Container(
//         margin: const EdgeInsets.only(right: 5.0),
//         width: MediaQuery.of(context).size.width - 40,
//         decoration: BoxDecoration(
//           color: Theme.of(context).primaryColor,
//           borderRadius: BorderRadius.circular(5.0),
//           image: DecorationImage(
//             image: NetworkImage(
//               addition.imageUrl,
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       ClipPath(
//         clipper: PromoClipper(),
//         child: Container(
//           margin: const EdgeInsets.only(right: 5.0),
//           width: MediaQuery.of(context).size.width - 40,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5.0),
//             color: Theme.of(context).primaryColor,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(
//               top: 10,
//               left: 15,
//               right: 125,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(addition.title,
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline4!
//                         .copyWith(fontSize: 15)),
//                 const SizedBox(height: 15),
//                 // Row(
//                 //   children: [
//                 //     const Icon(Icons.calendar_month),
//                 //     const SizedBox(
//                 //       width: 5,
//                 //     ),
//                 //     Text(addition.startDate),
//                 //   ],
//                 // ),
//                 // const SizedBox(height: 15),
//                 // Row(
//                 //   children: [
//                 //     const Icon(Icons.location_pin),
//                 //     const SizedBox(
//                 //       width: 5,
//                 //     ),
//                 //     Text(addition.adress),
//                 //   ],
//                 // ),
//                 // Text(
//                 //   addition.description,
//                 //   style: Theme.of(context)
//                 //       .textTheme
//                 //       .headline6!
//                 //       .copyWith(color: Colors.white),
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ]);
//   }
// }

// //Promo Clipper
// class PromoClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0, 0);
//     path.lineTo(0, size.height);
//     path.lineTo(225, size.height);
//     path.lineTo(275, 0);

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

// class AdditionCard extends StatelessWidget {
//   final NewAddition addition;

//   const AdditionCard({
//     Key? key,
//     required this.addition,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final String? cafeId = cafe.id;

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {
//           // Navigator.pushNamed(context, '/cafe-screen', arguments: cafe);
//         },
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(children: [
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5.0),
//                   image: DecorationImage(
//                     image: AssetImage('assets\images\Frame.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               // Positioned(
//               //   right: 10,
//               //   top: 10,
//               //   child: Container(
//               //     width: 100,
//               //     height: 30,
//               //     padding: const EdgeInsets.all(2.0),
//               //     decoration: BoxDecoration(
//               //       color: Colors.white,
//               //       borderRadius: BorderRadius.circular(5.0),
//               //     ),
//               //     child: Align(
//               //         alignment: Alignment.center,
//               //         child: StarRating(rating: 4)),
//               //   ),
//               // )
//             ]),
//             // Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: Column(
//             //     crossAxisAlignment: CrossAxisAlignment.start,
//             //     children: [
//             //       Text(
//             //         cafe.name!,
//             //         style: Theme.of(context)
//             //             .textTheme
//             //             .headline5!
//             //             .copyWith(color: Colors.white),
//             //       ),
//             //       SizedBox(
//             //         height: 5.0,
//             //       ),
//             //       CafeTags(cafe: cafe),
//             //       SizedBox(
//             //         height: 5.0,
//             //       ),
//             //       Text(
//             //         'distance from user',
//             //         style: Theme.of(context)
//             //             .textTheme
//             //             .bodyText1!
//             //             .copyWith(color: Colors.white),
//             //       ),
//             //     ],
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
