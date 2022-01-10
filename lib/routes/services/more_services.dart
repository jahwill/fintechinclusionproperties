import 'package:fintechinclusionproperties/routes/services/servicelist_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fintechinclusionproperties/imported_files.dart';

class MoreServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme();
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          'Services page',
          style: TextStyle(
              fontFamily: 'quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                servicesListModel(
                  ontap: () {},
                  leading: Image.asset(
                    'assets/icons/sellhome.png',
                    color: Theme.of(context).primaryColor,
                  ),
                  title: 'PropertySales',
                  subtitle: 'post a property for sale',
                ),
                servicesListModel(
                  ontap: () {},
                  leading: Image.asset(
                    'assets/icons/renthome.png',
                    color: Theme.of(context).primaryColor,
                  ),
                  title: 'Propertyrent',
                  subtitle: 'post a property for rent',
                ),
                servicesListModel(
                  ontap: () {},
                  leading: Image.asset(
                    'assets/icons/manage.png',
                    color: Theme.of(context).primaryColor,
                  ),
                  title: 'Manage',
                  subtitle: 'manage your property portfolio',
                ),
                servicesListModel(
                  ontap: () {},
                  leading: Image.asset(
                    'assets/icons/construct.png',
                    color: Theme.of(context).primaryColor,
                  ),
                  title: 'BuildCapture',
                  subtitle: 'manage construction site',
                ),
                servicesListModel(
                  ontap: () {},
                  leading: Image.asset(
                    'assets/icons/consent.png',
                    color: Theme.of(context).primaryColor,
                  ),
                  title: 'Consent',
                  subtitle: 'reject or grant a consent to a request',
                ),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/deposit_1.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Deposit',
                    subtitle: 'fund your purse through various means'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/withdraw.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Withdraw Money',
                    subtitle:
                        'withdraw money to your bank account & various crypto wallets'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/naira.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Send',
                    subtitle: 'send money to local bank account'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/send_money_1.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'INTl\' Payments',
                    subtitle: 'send money to foreign bank accounts'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/crypto.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Crypto Payment',
                    subtitle:
                        'pay for electricity bill from the comfort of your home'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/shoping_cart.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Marketplace',
                    subtitle: 'purchase all you need in one market'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/advertise.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Advertise',
                    subtitle: 'help people know more about your services'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/labour.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Labour',
                    subtitle: 'employ workers'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/grant.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Request grant',
                    subtitle:
                        'access a grant to support your security business'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/loan2.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Request Loan',
                    subtitle: 'get a loan base on your terms and condition'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/equity_invest.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Equity Investment',
                    subtitle:
                        'raise capital for your business by selling shares'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/truss_black.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Request Truss',
                    subtitle: 'raise capital through the truss model'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/truss_black.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Grant a Truss',
                    subtitle: 'solidify the ecosystem by granting a truss'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/truss_black.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Manage Truss',
                    subtitle: 'declare profit & loss for your insurance'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/shares2.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Buy Shares',
                    subtitle: 'buy shares of various businesses'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/stock.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Buy Stock',
                    subtitle: 'Invest in the stock market'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/donate.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Donate',
                    subtitle: 'support those in need'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/product_edit.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Invoice Discounting',
                    subtitle: 'most reliable invoice finance facility'),
                servicesListModel(
                    ontap: () {
                      print('product_edit.png');
                    },
                    leading: Image.asset(
                      'assets/icons/heavyduty.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Instrument',
                    subtitle: 'financial instruments you can trust'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/esusu.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Personal Esusu',
                    subtitle: 'best way to earn while saving'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/crowdfunding.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Community Esusu',
                    subtitle: 'participate in group donations'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/team_icon.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Co-operative Membership',
                    subtitle: 'Become a corporate member of a co-operative'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/paynog.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Pay Co-operative Dues',
                    subtitle: 'pay corporate membership dues'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/ngos.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'NGO Membership',
                    subtitle: 'become a corporate member of an NGO'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/paynog.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'NGO membership dues',
                    subtitle: 'pay corporate membership dues'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/mobile1.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Purchase Airtime',
                    subtitle: 'buy airtime directly from your purse'),
                servicesListModel(
                    ontap: () {
                      print('notifications');
                    },
                    leading: Image.asset(
                      'assets/icons/power.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Power',
                    subtitle: 'pay for electricity bill '),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/gas.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Gas',
                    subtitle: 'buy cooking gas'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/petrol.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Petrol',
                    subtitle: 'buy cooking gas'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/flight.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Flight',
                    subtitle: 'book official flights'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/insure.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Insurance',
                    subtitle: 'any insurance service you need'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/healthcare.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Healthcare',
                    subtitle: 'access healthcare services'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/transport.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Acemove',
                    subtitle: 'transportation services'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/tax.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'GOVT\'',
                    subtitle: 'pay taxes and access government services'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/plan.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Security Business plans',
                    subtitle: '(get in touch with a BDSP for a business plan'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/education.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Education',
                    subtitle:
                        'access a specific education that suite your organization'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/train_4.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Training',
                    subtitle:
                        'access a specific education that suite your organization'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/article.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Articles on properties',
                    subtitle: 'get articles on  properties'),
                servicesListModel(
                    ontap: () {},
                    leading: Image.asset(
                      'assets/icons/forum.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Realestate Forum',
                    subtitle:
                        'connect, communicate, collaborate, etc. with other property providers'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/news.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'News & Videos',
                    subtitle:
                        'latest information to keep you updated with latest '
                        'happenings'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/support.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Get help',
                    subtitle: 'contact a professional/consultant'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/calender.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Calender',
                    subtitle: 'set your time and date for every activity'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/earn.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Earn',
                    subtitle: 'tell someone about us'),
                servicesListModel(
                    ontap: () {
                      print('object');
                    },
                    leading: Image.asset(
                      'assets/icons/survey.png',
                      color: Theme.of(context).primaryColor,
                    ),
                    title: 'Take Survey',
                    subtitle: 'help us to serve you better'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
