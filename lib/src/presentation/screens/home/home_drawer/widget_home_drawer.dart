import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/entity/user.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

import 'bloc/bloc.dart';

class WidgetHomeDrawer extends StatelessWidget {
  late User user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDrawerBloc, HomeDrawerState>(
      builder: (context, state) {
        if (state is HomeDrawerLoaded) {
          user = state.user;

          return _buildDrawer();
        } else {
          return Container();
        }
      },
    );
  }

  _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: COLOR_CONST.ORANGE2,
            ),
            child: Column(
              children: [
                Text(
                  user.userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            selectedColor: COLOR_CONST.ORANGE2,
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
