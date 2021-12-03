import 'package:flutter/material.dart';
import 'package:flutter_list_view_sample/Widgets/product_name.dart';
import 'package:flutter_list_view_sample/product_name_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController(
      initialPage: 0,
      keepPage: true,
    );
    final _pageView = PageView(
      controller: _controller,
      children: [
        CartCheck(),
        ProductNamePage(),
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _pageView,
    );
  }
}

//この下がHirokiくんの書いたコード＋コード追加部分

class CartCheck extends StatefulWidget {
  const CartCheck({Key? key}) : super(key: key);

  @override
  _CartCheckState createState() => _CartCheckState();
}

class _CartCheckState extends State<CartCheck> {
  @override
  Widget build(BuildContext context) {
    // final _size = MediaQuery.of(context).size;
    final _productStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );

    List<String> list = [
      "meat",
      "detergent",
      "chicken",
      "USB",
      "sponge",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
        backgroundColor: Color(0xff254284),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GridView.builder(
              padding: EdgeInsets.all(
                10,
              ),
              itemBuilder: (BuildContext context, int index) {
                return productName(
                  text: list[index],
                  // size: _size,
                  textStyle: _productStyle,
                );
              },
              itemCount: list.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget separatorItem() {
    return Container(
      height: 10,
      color: Colors.white,
    );
  }

  //Hirokiくんの書いたコード

  // Widget _messageItem(String title) {
  //   return Card(
  //     child: Column(
  //       children: <Widget>[
  //         ListTile(
  //           title: Text(
  //             title,
  //             style: TextStyle(color: Colors.black, fontSize: 18.0),
  //           ),
  //           subtitle: Text("color/size"),
  //         ),
  //       ], // 長押し
  //     ),
  //   );
  // }

  //後述したコード
  Widget _messageItem(String title) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
                Text('color/size'),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  right: 50,
                  top: 20,
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      '0',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 40,
                          color: Colors.yellow[700],
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '−',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          color: Colors.yellow[700],
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
