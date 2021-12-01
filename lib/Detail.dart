import 'package:flutter/material.dart';
import 'package:instax020/Dashboard.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/image/fujifilm-banner.png',
              width: 100,
              height: 20,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Search(),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  color: Color(0xff8FCEB4),
                  margin: EdgeInsets.only(
                    right: 21,
                  ),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                      ),
                      child: Text(
                        'Instax',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    trailing: SizedBox(
                      width: 15,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Instax Mini Mint 7+',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            '\$ 49.90',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xffffffff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/details');
                          },
                          child: Text(
                            'Buy',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'images/assets/InstaxMini7plus_Mint.png',
                    width: MediaQuery.of(context).size.width / 3.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
