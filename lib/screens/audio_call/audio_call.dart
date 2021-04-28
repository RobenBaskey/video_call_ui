import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_call_ui/component/rounded_icon.dart';
import 'package:video_call_ui/size_config.dart';

class AudioCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/full_image.png",fit: BoxFit.cover,height: double.infinity,),
          DecoratedBox(decoration: BoxDecoration(color: Colors.black.withOpacity(0.3))),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Jemmy \nWilliam",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),),
                  VerticalSpacing(of: 20,),
                  Text("Incoming 00.01",
                  style: TextStyle(
                    color: Colors.grey[400]
                  ),),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundedButton(
                        image: "assets/icons/Icon Mic.svg",
                        color: Colors.white,
                        onpress: (){},
                      ),
                      SizedBox(width: 20,),
                      RoundedButton(
                        image: "assets/icons/call_end.svg",
                        color: Colors.red,
                        onpress: (){},
                      ),
                      SizedBox(width: 20,),
                      RoundedButton(
                        image: "assets/icons/Icon Volume.svg",
                        color: Colors.white,
                        onpress: (){},
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

