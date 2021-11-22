import 'package:flutter/material.dart';

class UserCards extends StatefulWidget {
  const UserCards({Key? key}) : super(key: key);

  @override
  _UserCardsState createState() => _UserCardsState();
}

class _UserCardsState extends State<UserCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // In this I want to build list view by calling
      body: ListViewBuilder(),
    );
  }
}

// ignore: must_be_immutable
class ListViewBuilder extends StatelessWidget {
  // from this list data have to fatch
  List<Map> products = [
    {
      "name": "Samarth Mess",
      "address": "Pimpri Chinchwad",
      "ratingcount": "124",
      "rating": "4.9",
      "image": "assets/images/samarth.jpg",
    },
    {
      "name": "Rohokale Tiffins",
      "address": "Akurdi , Pune",
      "ratingcount": "124",
      "rating": "4.9",
      "image": "assets/images/rohokale.jpg",
    },
    {
      "name": "Maya's Kitchen",
      "address": "Ambegaon Budruk , Pune",
      "ratingcount": "124",
      "rating": "4.9",
      "image": "assets/images/maya.jpg",
    },
  ];

  ListViewBuilder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //====================== List View is here ===========================
      // body: Container(
      //   child: ListView.separated(        // To add separation line between the ListView
      //         separatorBuilder: (context, index) => Divider(
      //           color: Colors.grey
      //         ),

      //           itemCount: products.length,
      //           itemBuilder: (BuildContext context, int index){
      //           return ListTile(
      //             leading: Icon(Icons.person),
      //             trailing: Text(products[index]["id"]),
      //             title: Text(products[index]["name"]),
      //           );
      //         },
      //     ),
      //  ),

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    width: double.infinity,
                    child: Image.asset(
                      products[index]["image"],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // ================= like comment and share ===============
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index]["name"],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.purple,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(products[index]["rating"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.purple,
                                )),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                                '(' +
                                    products[index]["ratingcount"] +
                                    ' ratings)',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey,
                                )),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(products[index]["address"],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey,
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
