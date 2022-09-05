import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/repo/user_repository.dart';
import 'package:qivi_app/src/presentation/common_widgets/common_widgets.dart';
import 'package:qivi_app/src/presentation/router.dart';
import 'package:qivi_app/src/utils/my_const/FONT_CONST.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../model/entity/entity.dart';

class EditAddressScreen extends StatefulWidget {
  const EditAddressScreen({Key? key}) : super(key: key);

  @override
  State<EditAddressScreen> createState() => _EditAddressScreenState();
}

class _EditAddressScreenState extends State<EditAddressScreen> {
  late UserRepository _userRepo;
  final _key1 = GlobalKey();

  int checkBox = 0;
  List<UserOrderInfo> userOrderInfo = [];
  @override
  void initState() {
    _userRepo = RepositoryProvider.of<UserRepository>(context);

    super.initState();
  }

  void _showCase() {
    // ShowCaseWidget.of(context).startShowCase(
    //   [
    //     _key1,
    //   ],
    // );
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Địa chỉ giao hàng "), actions: [
          SpecialIcon(Icons.add_location_alt_outlined, () {
            Navigator.of(context).pushNamed(AppRouter.CREATE_ADDRESS);
          }),
        ]),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: FutureBuilder<AppResponse<List<UserOrderInfo>>>(
                future: _userRepo.getUserOderInfo(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Column(
                        children: [
                          MySkeleton(0.95, 0.15),
                          MySkeleton(0.95, 0.15),
                          MySkeleton(0.95, 0.15),
                        ],
                      );
                    default:
                      if (snapshot.hasError)
                        return Text('Error: ${snapshot.error}');
                      else {
                        print(snapshot.data);
                        if (snapshot.data!.message != "success") {
                          return Center(
                              child: Text(
                                  "Đã xảy ra lỗi. Vui lòng theo dõi sau "));
                        }
                        userOrderInfo = snapshot.data!.data!;
                        if (userOrderInfo.length == 0) {
                          _showCase();
                          return Column(children: [
                            Image.asset("assets/images/no-record.png"),
                            Text(
                              "Chưa có dữ liệu",
                              style: FONT_CONST.SEMIBOLD_BLACK_18.copyWith(
                                  color: Colors.black.withOpacity(0.4)),
                            )
                          ]);
                        }
                        return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: userOrderInfo.length,
                            itemBuilder: (context, index) {
                              return _buildOrderInfo(userOrderInfo[index]);
                            });
                        // return Text("success");
                      }
                  }
                }),
          ),
        ]));
  }

  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  Widget _buildOrderInfo(UserOrderInfo info) {
    return ListTile(
      leading: Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      title: RichText(
          text: TextSpan(children: [
        TextSpan(text: info.recipient, style: FONT_CONST.MEDIUM_BLACK2_14),
        TextSpan(
            text: "(${info.phoneNumber})", style: FONT_CONST.REGULAR_BLACK2_14),
      ])),
      subtitle: Text(info.address),
    );
  }
}

class SpecialIcon extends StatefulWidget {
  const SpecialIcon(this.icon, this.callback, {Key? key}) : super(key: key);
  final IconData icon;
  final VoidCallback callback;
  @override
  State<SpecialIcon> createState() => _SpecialIconState();
}

class _SpecialIconState extends State<SpecialIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<double> _curveAnimation;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _curveAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _colorAnimation = ColorTween(begin: Colors.black, end: Colors.red)
        .animate(_curveAnimation);
    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 50), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 30), weight: 50),
    ]).animate(_curveAnimation);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return IconButton(
            icon: Icon(
              widget.icon,
              color: _colorAnimation.value,
              size: _sizeAnimation.value,
            ),
            onPressed: () {
              widget.callback();
            },
          );
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
