import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final Function ontap;
  final String title;
  final String subtitle;
  final Widget leading;

  ProfileItem(
      {@required this.ontap,
      @required this.title,
      @required this.subtitle,
      @required this.leading});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 65.0,
          padding: EdgeInsets.all(9.0),
          decoration: BoxDecoration(
              //color: Colors.pink,
              ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  child: leading,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, top: 0.0, bottom: 2.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 10.0,
                          fontFamily: 'quicksand',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
