import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:myApp/utils/my_colors.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(40.0),
          child: MainDetails(),
        ),
      ),
    );
  }
}

class MainDetails extends StatefulWidget {
  @override
  _MainDetailsState createState() => _MainDetailsState();
}

class _MainDetailsState extends State<MainDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [HeaderWidget(), BodyWidget()],
    );
  }
}

class HeaderWidget extends StatefulWidget {
  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

bool isSwitchedOn = false;

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(icon: Icon(FeatherIcons.arrowLeft), onPressed: () {}),
        SizedBox(
          width: 12.0,
        ),
        Text(
          "TITLE",
          style: TextStyle(
              color: MyColors.mBlack,
              fontWeight: FontWeight.w300,
              fontSize: 20.0),
        ),
        Spacer(),
        Switch(
          value: isSwitchedOn,
          onChanged: (value) {
            setState(() {
              isSwitchedOn = value;
            });
          },
          activeTrackColor: MyColors.mgreen,
        )
      ],
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.asset(
          'assets/cover.jpg',
          fit: BoxFit.fill,
          height: 200.0,
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: OutlineButton(
              borderSide: BorderSide(color: MyColors.mgreen),
              highlightedBorderColor: MyColors.mBlack,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/github.png',
                      fit: BoxFit.fill,
                      height: 24.0,
                      width: 24.0,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Text(
                      "GIT REPO",
                      style: TextStyle(color: MyColors.mBlack),
                    ),
                  ],
                ),
              ),
              onPressed: () {},
            ))
          ],
        )
      ],
    );
  }
}
