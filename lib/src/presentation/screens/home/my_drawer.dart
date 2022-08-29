// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:qivi_app/src/model/entity/user.dart';
// import 'package:qivi_app/src/utils/my_const/my_const.dart';

// class MyDrawer extends StatefulWidget {
//   MyDrawer({Key? key}) : super(key: key);

//   @override
//   State<MyDrawer> createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {
//   late User user;

//   @override
//   void initState() {
    
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: COLOR_CONST.ORANGE2,
//             ),
//             child: Column(
//               children: [
//                 Text(
//                   'Drawer Header',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           ListTile(
//             selectedColor: COLOR_CONST.ORANGE2,
//             leading: Icon(Icons.message),
//             title: Text('Messages'),
//           ),
//           ListTile(
//             leading: Icon(Icons.account_circle),
//             title: Text('Profile'),
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text('Settings'),
//           ),
//         ],
//       ),
//     );
//   }
// }
