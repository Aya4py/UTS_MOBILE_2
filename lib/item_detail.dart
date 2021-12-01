import 'package:flutter/material.dart';

class Itemdetails extends StatelessWidget {
  const Itemdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Image.asset(
                'assets/image/fujifilm-banner.png',
                width: 95,
                height: 18,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 19,
                  ),
                  child: Image.asset(
                    'images/assets/InstaxMini7plus_Mint.png',
                    width: MediaQuery.of(context).size.width / 1.7,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instax Mini Mint 7+',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Nam vitae eros ut nibh ornare commodo. \nNullam cursus venenatis magna, et porta mauris. Mauris consectetur rhoncus justo. Vivamus luctus mauris nec molestie egestas. Sed eu porttitor erat, id facilisis orci.',
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      'Poin',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Nam vitae eros ut nibh ornare commodo. \nNullam cursus venenatis magna, et porta mauris. Mauris consectetur rhoncus justo. Vivamus luctus mauris nec molestie egestas. Sed eu porttitor erat, id facilisis orci.',
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      'Poin & Shot',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Nam vitae eros ut nibh ornare commodo. \nNullam cursus venenatis magna, et porta mauris. Mauris consectetur rhoncus justo. Vivamus luctus mauris nec molestie egestas. Sed eu porttitor erat, id facilisis orci.',
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border(
                  top: BorderSide.none,
                ),
              ),
              width: 378,
              height: 59,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$49.00',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xfff8FCEB4),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff8FCEB4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/item_details');
                      },
                      child: Text(
                        'Buy',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
