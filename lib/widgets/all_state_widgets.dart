import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio/bloc/radio_bloc.dart';
import 'package:radio/bloc/user_event.dart';
import 'package:radio/models/audioplayer.dart';
import 'package:radio/models/radio_model.dart';
import 'package:radio/ui_visuals/text_styles.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Standby extends StatelessWidget {

  final spinkit = SpinKitFoldingCube(
      color: Color(0xfffaa307),
      size: 35
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(child: Center(child: spinkit)));
  }
}

// class ButtonReadyToBePressed extends StatelessWidget {
//   final networkImage;
//   final name;
//   final genre;
//   final uri;
//
//   ButtonReadyToBePressed(this.networkImage, this.name, this.genre, this.uri);
//
//   @override
//   Widget build(BuildContext context) {
//     final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);
//
//     return ElevatedButton(
//         onPressed: () {
//           radioBloc.selectedStation = RadioModel(name: name, genre: genre, imageUrl: networkImage, uri: uri);
//           radioBloc.add(StationSelect(radioBloc.selectedStation));
//         },
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//               side: BorderSide(width: 1, color: Color(0xff7f5539)),
//               borderRadius: BorderRadius.circular(10.0))),
//           backgroundColor: MaterialStateProperty.all(Color(0xff1D071B)),
//           padding: MaterialStateProperty.all(EdgeInsets.all(5)),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
//               child: CircleAvatar(
//                   radius: 25,
//                   backgroundColor: Color(0xff370617),
//                   backgroundImage: NetworkImage(networkImage)
//               ),
//             ),
//             Column(
//               // mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(name, style: RadioStation),
//                 Text(genre, style: Genre),
//                 // Flexible(fit: FlexFit.loose,
//                 //     child: Container(child: Text('Station name', style: RadioStation, maxLines: 1, overflow: TextOverflow.ellipsis))),
//                 // Flexible(fit: FlexFit.loose,
//                 //     child: Container(child: Text('genre name', style: Genre, maxLines: 1, overflow: TextOverflow.ellipsis))),
//               ],
//             ),
//             Expanded(
//                 child: Container()
//             ),
//             // MyBlinkingButton(),
//             // Expanded(
//             //     child: Container()
//             // ),
//             IconButton(
//               padding: EdgeInsets.all(5),
//               alignment: Alignment.center,
//               iconSize: 35,
//               color: Color(0xfffaa307),
//               icon: Icon(Icons.favorite_border),
//               onPressed: () {
//                 print('pressed heart');
//               },
//             ),
//           ],
//         )
//     );
//   }
// }
//
// class PlayPressed extends StatelessWidget {
//   final networkImage;
//   final name;
//   final genre;
//   final uri;
//
//   PlayPressed(this.networkImage, this.name, this.genre, this.uri);
//
//   @override
//   Widget build(BuildContext context) {
//     final RadioBloc radioBloc = BlocProvider.of<RadioBloc>(context);
//     return ElevatedButton(
//         onPressed: () {
//           // radioBloc.selectedStation != RadioModel(name: name, genre: genre, imageUrl: networkImage, uri: uri);
//           radioBloc.add(StationSelect());
//         },
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//               side: BorderSide(width: 1, color: Color(0xfffaa307)),
//               borderRadius: BorderRadius.circular(10.0))),
//           backgroundColor: MaterialStateProperty.all(Color(0xff370617)),
//           padding: MaterialStateProperty.all(EdgeInsets.all(5)),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.fromLTRB(1, 1, 10, 1),
//               child: CircleAvatar(
//                   radius: 25,
//                   backgroundColor: Color(0xff370617),
//                   backgroundImage: NetworkImage(networkImage)
//               ),
//             ),
//             Column(
//               // mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(name, style: RadioStation),
//                 Text(genre, style: Genre),
//                 // Flexible(fit: FlexFit.loose,
//                 //     child: Container(child: Text('Station name', style: RadioStation, maxLines: 1, overflow: TextOverflow.ellipsis))),
//                 // Flexible(fit: FlexFit.loose,
//                 //     child: Container(child: Text('genre name', style: Genre, maxLines: 1, overflow: TextOverflow.ellipsis))),
//               ],
//             ),
//             Expanded(
//                 child: Container()
//             ),
//             MyBlinkingButton(),
//             Expanded(
//                 child: Container()
//             ),
//             IconButton(
//               padding: EdgeInsets.all(5),
//               alignment: Alignment.center,
//               iconSize: 35,
//               color: Color(0xfffaa307),
//               icon: Icon(Icons.favorite_border),
//               onPressed: () {
//                 print('pressed heart');
//               },
//             ),
//           ],
//         )
//     );
//   }
// }
//
// class MyBlinkingButton extends StatefulWidget {
//   @override
//   _MyBlinkingButtonState createState() => _MyBlinkingButtonState();
// }
//
// class _MyBlinkingButtonState extends State<MyBlinkingButton>
//     with SingleTickerProviderStateMixin {
//
//    AnimationController _animationController;
//
//   @override
//   void initState() {
//     _animationController =
//     new AnimationController(vsync: this, duration: Duration(seconds: 1));
//     _animationController.repeat(reverse: true);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FadeTransition(
//       opacity: _animationController,
//       child:
//       Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Icon(
//           Icons.play_circle_outline_outlined,
//           size:35,
//           color: Color(0xfffaa307),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }
// }