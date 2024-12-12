import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:myfirstapp/core/widgets/AppBarWidget.dart";
import "package:myfirstapp/core/widgets/CategoriesWidget.dart";
import "package:myfirstapp/core/widgets/PopularItemWidget.dart";

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Custom App Bar Widget
          const AppBarWidget(),

          //Search
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "what can we get you?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const Icon(Icons.filter_list)
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          const CategoriesWidget(),

          //Popular Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Popular Foods',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // popular Items widget
          PopularItemWidget(),
        ],
      ),
    );
  }
}
