import 'package:flutter/material.dart';

Widget productName({
  @required String? text,
  // @required Size? size,
  @required TextStyle? textStyle,
}) {
  return Container(
    width: 500,
    height: 200,
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
                    '$text',
                    style: textStyle!.copyWith(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'lead test lead test lead\ntext lead text',
                    style: textStyle.copyWith(
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 2.5,
                    ),
                    child: Text(
                      '\$100.00',
                      style: textStyle.copyWith(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Container(
          height: 2.5,
          width: 500,
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
                width: 20,
              ),
              Center(
                child: Text(
                  '0',
                  style: textStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
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
  );
}
