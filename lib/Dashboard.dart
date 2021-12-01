import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  List<productdata> _produklist = [
    productdata(
      titleproduk: 'Instax Mini Mint 7+',
      price: 49.00,
      img: 'images/assets/InstaxMini7plus_Mint.png',
      color: Color(0xff8FCEB4),
    ),
    productdata(
      titleproduk: 'Instax Mini Blue 7+',
      price: 48.00,
      img: 'images/assets/InstaxMini7plus_Blue.png',
      color: Color(0xff97BFE3),
    ),
    productdata(
      titleproduk: 'Instax Mini Choral 7+',
      price: 48.00,
      img: 'images/assets/InstaxMini7plus_Choral.png',
      color: Color(0xffB43939),
    ),
    productdata(
      titleproduk: 'Instax Mini Pink 7+',
      price: 48.00,
      img: 'images/assets/InstaxMini7plus_Pink.png',
      color: Color(0xffFF69B4),
    ),
    productdata(
      titleproduk: 'Instax Mini Lavender 7+',
      price: 48.00,
      img: 'images/assets/InstaxMini7plus_Lavender.png',
      color: Color(0xff8B7FAF),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/fujifilm-banner.png',
                width: 100,
                height: 20,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 1, child: Search()),
          SizedBox(
            height: 8,
          ),
          Flexible(
            flex: 8,
            child: ListView.builder(
              itemCount: _produklist.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(bottom: 9),
                child: CardTile(
                  titleproduk: _produklist[index].titleproduk,
                  price: _produklist[index].price,
                  color: _produklist[index].color,
                  img: _produklist[index].img,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 12, left: 12),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            fillColor: Colors.black,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            hintText: 'Searching',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xff6F7070),
            ),
          ),
        ),
      ),
    );
  }
}

class productdata {
  final String? titleproduk;
  final double? price;
  final String? img;
  final Color? color;

  productdata({this.titleproduk, this.price, this.img, this.color});
}

class CardTile extends StatelessWidget {
  final String? titleproduk;
  final double? price;
  final String? img;
  final Color? color;
  const CardTile({
    Key? key,
    this.titleproduk,
    this.price,
    this.img,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Stack(
        fit: StackFit.passthrough,
        alignment: Alignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            color: color,
            margin: EdgeInsets.only(
              right: 21,
            ),
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: Text(
                  titleproduk!,
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
                        titleproduk!,
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      '\$ $price',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/item_details');
                    },
                    child: Text(
                      'Buy Now',
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
              img!,
              width: MediaQuery.of(context).size.width / 3.6,
            ),
          ),
        ],
      ),
    );
  }
}
