// import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   final Product product;

//   const ProductCard({
//     Key? key,
//     required this.product,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final String? productId = product.id;

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: InkWell(
//         onTap: () {
//           //change navigation to product screen
//           Navigator.pushNamed(context, '/cafe-screen', arguments: product);
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
//                     image: NetworkImage(product.imageUrl!),
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
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.name!,
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline5!
//                         .copyWith(color: Colors.white),
//                   ),
//                   SizedBox(
//                     height: 5.0,
//                   ),
//                   // CafeTags(cafe: cafe),
//                   SizedBox(
//                     height: 5.0,
//                   ),
//                   Text(
//                     'distance from user',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyText1!
//                         .copyWith(color: Colors.white),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
