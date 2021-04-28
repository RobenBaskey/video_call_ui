import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_call_ui/component/rounded_icon.dart';
import 'package:video_call_ui/size_config.dart';

class DialScreen extends StatefulWidget {
  @override
  _DialScreenState createState() => _DialScreenState();
}

class _DialScreenState extends State<DialScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Text("Anna Williams",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Text("Calling..",style: TextStyle(color: Colors.grey),),
                VerticalSpacing(of: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[800],
                    shape: BoxShape.circle
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/calling_face.png"),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    IconWithText(
                      image: "assets/icons/Icon Mic.svg",
                      title: "Audio",
                    ),
                    Spacer(),
                    IconWithText(
                      image: "assets/icons/Icon Volume.svg",
                      title: "Microphone",
                    ),
                    Spacer(),
                    IconWithText(
                      image: "assets/icons/Icon Video.svg",
                      title: "Video",
                    )
                  ],
                ),
                VerticalSpacing(of: 50,),
                Row(
                  children: [
                    IconWithText(
                      image: "assets/icons/Icon Message.svg",
                      title: "Message",
                    ),
                    Spacer(),
                    IconWithText(
                      image: "assets/icons/Icon User.svg",
                      title: "Add Contact",
                    ),
                    Spacer(),
                    IconWithText(
                      image: "assets/icons/Icon Voicemail.svg",
                      title: "Voice Mail",
                    )
                  ],
                ),
                VerticalSpacing(of: 50,),
                RoundedButton(
                  color: Colors.red,
                  image: "assets/icons/call_end.svg",
                  onpress: (){},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final String image , title;
  const IconWithText({
    Key key, this.image, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(image,color: Colors.white,width: 30,height: 30,),
        Text(title,style: TextStyle(color: Colors.white,fontSize: 13),)
      ],
    );
  }
}
