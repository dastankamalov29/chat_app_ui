// import 'package:flutter/material.dart';

// class FirstPage extends StatelessWidget {
//   const FirstPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Weather"),
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.menu),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.settings),
//           ),
//         ],
//       ),
//       body: _buildBody(),
//     );
//   }
// }

// Widget _buildBody() {
//   return SingleChildScrollView(
//     child: Column(
//       children: [
//         _headerImage(),
//         SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 _weatherDescription(),
//                 const Divider(thickness: 1),
//                 _temperature(),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }






// Image _headerImage() {
//   return const Image(
//     image: NetworkImage(
//       "https://scied.ucar.edu/sites/default/files/media/images/weather_0.jpg",
//     ),
//     fit: BoxFit.cover,
//   );
// }




// Widget _weatherDescription() {
//   return const Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Text(
//         "Tuesday - May 22",
//         style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//       ),
//       Divider(thickness: 1),
//       Text(
//           "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
//     ],
//   );
// }



//   Widget _temperature(){
//     return const Row(
//       children: [
//         Column(
//           children: [
//             Icon(Icons.sunny,color: Colors.amber),
//           ],
//         ),
//         SizedBox(width: 40,height: 10,),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("15C Clear"),
//             Text("Murmonskaya oblast, Murmansk")
//           ],
//         ),
//       ],
//     );
//   }



