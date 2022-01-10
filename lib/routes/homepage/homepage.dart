import 'package:fintechinclusionproperties/components/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fintechinclusionproperties/imported_files.dart';
import '../services/more_services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.grey[50],
        title: RichText(
          text: TextSpan(
              text: 'Fintech  ',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primaryVariant,
//                  Color(0xFFFF0157),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' Properties',
                  style: TextStyle(
                      color: Color(0xFFFFaa00),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 35,
              width: 35,
              child: Image.asset(
                'assets/icons/person.png',
                color: Theme.of(context).colorScheme.primaryVariant,
              ),
            ),
          )
        ],
      ),

      ///this floating action button below
      floatingActionButton: SizedBox(
        height: 50,
        child: FloatingActionButton(
          onPressed: () {
            ///take you to notification page
          },
          backgroundColor: Theme.of(context).colorScheme.primaryVariant,
          child: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                height: 215,
                color: Colors.grey[50],
                child: CarouselSlider1(),
              ),
              Container(
//                height: MediaQuery.of(context).size.height - 190,
//                color: Colors.pink,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            'Services',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'quicksand',
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          MoreServicesPage()));
                            },
                            child: SizedBox(
                              width: 40,
                              child: Row(
                                children: [
                                  Text(
                                    'more',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                  Icon(
                                    Icons.more_horiz,
                                    size: 30,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryVariant,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _servicesHolder(
                            image: Image.asset(
                              'assets/icons/sellhome.png',
                              color: Color(0xFFFFFFFF),
                            ),
                            txt: 'PropertySales',
                            color: Color(0xFF001437),
//                              bordercolor: Color(0xFF001407)
                          ),
                          _servicesHolder(
                            image: Image.asset('assets/icons/renthome.png',
                                color: Colors.white),
                            color: Theme.of(context).colorScheme.primaryVariant,
                            txt: 'PropertyRent',
                          ),
                          _servicesHolder(
                              image: Image.asset(
                                'assets/icons/manage.png',
                                color: Color(0xFFFFaa00),
                              ),
                              color: Color(0xFF00377e),
                              txt: 'Manage'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 150,
                      width: 200,
                      child:
                          Image.asset('assets/images/illustrate_transact.png'),
                    )
                  ],
                ),
              ),
//              SizedBox(
//                height: 35,
//                child: Row(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.only(left: 10.0),
//                      child: Text(
//                        'Updates',
//                        style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                          fontFamily: 'quicksand',
//                          fontSize: 17,
//                          color: Theme.of(context).colorScheme.primaryVariant,
//                        ),
//                      ),
//                    )
//                  ],
//                ),
//              ),
//              SingleChildScrollView(
//                scrollDirection: Axis.horizontal,
//                physics: BouncingScrollPhysics(),
//                child: Row(
//                  children: <Widget>[
//                    _holder(Color(0XFF028473)),
//                    _holder(Color(0XFF020023)),
//                    _holder(Color(0XFF001515)),
//                    _holder(Color(0XFF08a124)),
//                    _holder(Color(0XFF006a6a))
//                  ],
//                ),
//              )
            ],
          ),
        ),
      )),
    );
  }

  Widget _servicesHolder(
      {Image image, String txt, Color color, Color bordercolor}) {
    return Container(
      height: 90.0,
      width: 110.0,
      decoration: BoxDecoration(
//        color: Colors.grey[200],
//        borderRadius: BorderRadius.circular(5),
          ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          Container(
            height: 46.0,
            width: 46.0,
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
//              border:
//                  Border.all(width: 5.0, color: bordercolor ?? Colors.white),
              color: color ?? Colors.white,
//              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    offset: Offset(1, 1.5),
                    blurRadius: 1),
              ],
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: image,
            ),
          ),
          Expanded(
            child: Text(
              txt,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'quicksand',
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _holder(Color color) {
    return Card(
        child: Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              offset: Offset(2, 2),
              blurRadius: 1)
        ],
      ),
    ));
  }
}
