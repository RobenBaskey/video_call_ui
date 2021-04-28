import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_call_ui/component/rounded_icon.dart';
import 'package:video_call_ui/model/group_model.dart';
import 'package:video_call_ui/screens/group_call/component/group_body.dart';
import 'package:video_call_ui/size_config.dart';

class GroupCall extends StatefulWidget {
  @override
  _GroupCallState createState() => _GroupCallState();
}

class _GroupCallState extends State<GroupCall> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body:Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        color: Colors.deepPurple[900],
        child: Row(
          children: <Widget>[
            RoundedButton(
              color: Colors.red,
              image: "assets/icons/call_end.svg",
            ),
            Spacer(),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: SvgPicture.asset("assets/icons/Icon Volume.svg",width: 20,height: 20,color: Colors.white,),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: SvgPicture.asset("assets/icons/Icon Mic.svg",width: 20,height: 20,color: Colors.white,),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: SvgPicture.asset("assets/icons/Icon Video.svg",width: 20,height: 20,color: Colors.white,),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              child: SvgPicture.asset("assets/icons/Icon Repeat.svg",width: 20,height: 20,color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }

}
