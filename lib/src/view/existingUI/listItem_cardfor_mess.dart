// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ListMessCard extends StatefulWidget {
  const ListMessCard({Key? key}) : super(key: key);

  @override
  _ListMessCardState createState() => _ListMessCardState();
}

class _ListMessCardState extends State<ListMessCard> {
  List<Map> products = [
    {
      "name": "Samarth Mess",
      "address": "Pimpri Chinchwad",
      "ratingcount": "124",
      "rating": "4.9",
      "image": "assets/images/listSmallMessNames/samarthSmall.jpg",
    },
    {
      "name": "Kulkarni mess",
      "address": "Pimpri Chinchwad",
      "ratingcount": "124",
      "rating": "4.9",
      "image": "assets/images/listSmallMessNames/kulkarniSmall.jpg",
    },
    {
      "name": "Swastik Tiffin's",
      "address": "Pimpri Chinchwad",
      "ratingcount": "124",
      "rating": "4.9",
      "image": "assets/images/listSmallMessNames/Swastik Tiffin's.jpg",
    },
  ];

  final List<String> _data = ['ACCOUNT', 'BUSINESS', 'ACCCOUNT'];

  final List<String> _metadata = [
    'jan 35, 2021',
    'jan 23, 2021',
    'feb 35, 2021'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NewArticle(pageTitle: _data[index],)));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                padding: const EdgeInsets.only(right: 2),
                                height: 70,
                                width: 70,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      products[index]["image"],
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: SizedBox(
                                height: 100,
                                width: 200,
                                //flex: 2,
                                child: RichText(
                                  text: TextSpan(
                                    text: products[index]["name"] + " \n",
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple,
                                        height: 2),
                                    children: [
                                      TextSpan(
                                          text: products[index]["address"],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          )),
                                      TextSpan(
                                          text: " \n " + _metadata[index],
                                          style: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.grey)),
                                      const TextSpan(
                                          text: " - 7 min read",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
