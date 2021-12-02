import 'package:flutter/material.dart';

class ProductNamePage extends StatelessWidget {
  const ProductNamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _productStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Name'),
        backgroundColor: Color(0xff254284),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ///TODO:Hiroki君に教えるコードここから
            Container(
              width: _size.width * 0.95,
              height: _size.height * 0.305,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product name',
                              style: _productStyle.copyWith(
                                fontSize: _size.width * 0.060,
                              ),
                            ),
                            SizedBox(
                              height: _size.height * 0.020,
                            ),
                            Text(
                              'lead test lead test lead\ntext lead text',
                              style: _productStyle.copyWith(
                                fontSize: _size.width * 0.050,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 2.5,
                              ),
                              child: Text(
                                '\$100.00',
                                style: _productStyle.copyWith(
                                  fontSize: _size.width * 0.050,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: _size.width * 0.30,
                          height: _size.height * 0.15,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 2.5,
                    width: _size.width * 0.95,
                    color: Colors.black,

                    ///TODO:黒い横線はこの下のクラスで作れるよ！
                    child: VerticalDivider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 45,
                          height: 45,
                          child: FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {},
                            child: Icon(
                              Icons.remove,
                              size: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: _size.width * 0.15,
                        ),
                        Center(
                          child: Text(
                            '0',
                            style: _productStyle.copyWith(
                              fontSize: _size.width * 0.070,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: _size.width * 0.15,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          child: FloatingActionButton(
                            backgroundColor: Colors.black,
                            onPressed: () {},
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///TODO:Hiroki君に教えるコードここまで
          ],
        ),
      ),
    );
  }
}
