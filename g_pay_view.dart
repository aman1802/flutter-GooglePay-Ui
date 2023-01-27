import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_example/try/g_pay_proflie.dart';

class GooglePayView extends StatefulWidget {
  const GooglePayView({super.key});

  @override
  State<GooglePayView> createState() => _GooglePayViewState();
}

class _GooglePayViewState extends State<GooglePayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 17),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/g_pay.jpg',
                  ),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 1,
                                    offset: Offset(0, 2))
                              ],
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.search),
                              SizedBox(
                                width: 20,
                              ),
                              DefaultTextStyle(
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                  child: AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        RotateAnimatedText(
                                          'Pay by name or number',
                                          rotateOut: false,
                                        ),
                                        RotateAnimatedText(
                                            'Pay friends and meechants')
                                      ]))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GPayProfileView(),
                            ));
                      },
                      child: CircleAvatar(
                        radius: 17,
                        backgroundImage: AssetImage('assets/images/aman.jpg'),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                height: 1295,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.qr_code_scanner_sharp,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Scan any qr code',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.contacts,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Pay contacts',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.phone_iphone,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Pay phone number',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.account_balance,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Bank transfer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.alternate_email_rounded,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Pay UPI ID or number',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.person_outline_rounded,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Self transfer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.receipt_long_rounded,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Pay bills',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 72,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Icon(
                                Icons.charging_station_rounded,
                                color: Colors.blue.shade900,
                                size: 35,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Text(
                                  'Mobile recharge',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 35,
                      width: 255,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'UPI ID: amank9709596@oksbi',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.copy_all,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'People',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              backgroundImage:
                                  AssetImage('assets/images/aman.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Aman kumar')
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              backgroundImage:
                                  AssetImage('assets/images/rakesh_phot.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Rakesh Das')
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              backgroundImage:
                                  AssetImage('assets/images/rohit.jpg'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Rahul kumar')
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 31,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.expand_more_outlined,
                                  color: Colors.blue.shade900,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('More..')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Businesses',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 45,
                          width: 105,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Explore',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 31,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.teal,
                                backgroundImage:
                                    AssetImage('assets/images/electric.jpeg'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('North Bihar')
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 32,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 31,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.teal,
                                  backgroundImage: AssetImage(
                                    'assets/images/jiologo.jpeg',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Jio recharge')
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 31,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.teal,
                                backgroundImage:
                                    AssetImage('assets/images/gas.jpeg'),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Bharat Gas')
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 31,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.expand_more_outlined,
                                  size: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('More..')
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Bills, recharges and more',
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 31,
                          backgroundColor: Colors.grey,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage('assets/images/electric.jpeg'),
                            radius: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rahul Das',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Bill due tomorrow',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                30,
                              ),
                              border: Border.all(color: Colors.grey)),
                          child: Row(
                            children: [
                              Text(
                                'Pay ₹1,534',
                                style: TextStyle(
                                    color: Colors.blue.shade900,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Try adding these',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 110,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.blue.shade100,
                                child: Icon(
                                  Icons.desktop_windows_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Rewards',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 110,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.blue.shade100,
                                child: Icon(
                                  Icons.time_to_leave_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'FASTag recharge',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 110,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.blue.shade100,
                                child: Icon(
                                  Icons.charging_station_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Postpaid mobile',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 110,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.blue.shade100,
                                child: Icon(
                                  Icons.router_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Brroadband/Landline',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          Text(
                            'See all',
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Promotions',
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.blue.shade100,
                                backgroundImage:
                                    AssetImage('assets/images/reward.jpg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Rewards',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.blue.shade100,
                                backgroundImage:
                                    AssetImage('assets/images/offers.jpg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Offes',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.blue.shade100,
                                backgroundImage:
                                    AssetImage('assets/images/referrals.jpg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Referrals',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: Colors.blue.shade100,
                                backgroundImage:
                                    AssetImage('assets/images/home.jpg'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Indi-Home',
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.update_outlined,
                          size: 30,
                          color: Colors.blue.shade900,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Show transation history',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.account_balance_outlined,
                          size: 30,
                          color: Colors.blue.shade900,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check bank balance',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 19,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 390,
                    height: 274,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/gpaybottom.jpg',
                              fit: BoxFit.cover,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 35,
                                      ),
                                      Text(
                                        'Invite friends to Get ₹100',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Invite friends to Google Pay and get 2101 when your friend sends their first payment. They get 721!',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Copy your code ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                            ),
                                          ),
                                          Text(
                                            't814o1s ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.copy_all_outlined,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        height: 40,
                                        width: 85,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Invite',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.blue.shade900,
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Showing businesses based on your location - Learn more',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
