import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_call_ui/constants.dart';
import 'package:video_call_ui/model/group_model.dart';
import 'package:video_call_ui/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _itemList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.53),
        itemBuilder: (context, index) => _itemList[index].isCalling ? Group_user_calling_card(
          image: _itemList[index].image,
          name: _itemList[index].name,
        ):Image.asset(_itemList[index].image,fit: BoxFit.cover,)
    );
  }

  List<GroupModel> _itemList = [
    GroupModel(
        name: "Roben Baskey",
        image: "assets/images/goup_call_1.png",
        isCalling: false
    ),
    GroupModel(
        name: "Anna Williams",
        image: "assets/images/group_call_face_2.png",
        isCalling: false
    ),
    GroupModel(
        name: "Robert Jhon",
        image: "assets/images/group_call_face_3.png",
        isCalling: false
    ),
    GroupModel(
        name: "Peter Parker",
        image: "assets/images/group_call_face_small.png",
        isCalling: true
    ),
  ];
}

class Group_user_calling_card extends StatelessWidget {

  final String image, name;
  const Group_user_calling_card({
    Key key,
    this.image,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.deepPurple[800]),
            child: Image.asset(image),
          ),
          VerticalSpacing(
            of: 20,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            "Calling...",
            style: TextStyle(color: Colors.grey[200]),
          )
        ],
      ),
    );
  }
}
