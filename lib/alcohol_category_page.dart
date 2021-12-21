import 'package:flutter/material.dart';
import 'package:flutter_list_view_sample/alcohol_category_detail_page.dart';

class AlcoholCategoryPage extends StatefulWidget {
  const AlcoholCategoryPage({Key? key}) : super(key: key);

  @override
  State<AlcoholCategoryPage> createState() => _AlcoholCategoryPage();
}

class _AlcoholCategoryPage extends State<AlcoholCategoryPage> {
  List<String> list = [
    "meat",
    "detergent",
    "chicken",
    "USB",
    "sponge",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Color(0xff254284),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Alcohol category",
                    style: TextStyle(
                      color: Colors.black,
                      height: 1,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  // Image.asset(
                  //   'assets/images/icon-alcohol.png',
                  //   width: 150,
                  // ),
                  Container(
                    width: 150,
                    height: 150,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  padding: EdgeInsets.all(
                    10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return categoryContainer(
                      ///TODO:1
                      text: list[index],
                      // size: _size,
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
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///TODO:2
  Widget categoryContainer({@required String? text}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            ///TODO:3
            builder: (context) => AlcoholCategoryDetailPage(text),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$text',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
                Text(
                  "Cheap wine from the United States",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "\$4200",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
