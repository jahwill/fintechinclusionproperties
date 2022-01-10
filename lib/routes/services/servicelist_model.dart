import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class servicesListModel extends StatelessWidget {
  Image leading;
  final String title;
  final String subtitle;

  final Function ontap;

  servicesListModel({this.leading, this.title, this.subtitle, this.ontap});

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
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
//                      spreadRadius: 0,
                        offset: Offset(2, 6),
                        blurRadius: 10)
                  ],
                ),
                child: leading,
              ),
              title: Text(
                title,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16.0,
                  fontFamily: 'quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                subtitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 10.0,
                    fontFamily: 'quicksand',
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
