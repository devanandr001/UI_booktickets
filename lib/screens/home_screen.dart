import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                            "Travel Safe", style: Styles.headLineStyle3,
                        ),
                        const Gap(5),
                        Text(
                            "Book Tickets", style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    //to add image we should mention path of image in pubspec
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/book-flight.png"),
                          )),
                    )
                  ],
                ),
                const Gap(25),                //to create gap between book tickets and search bar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


//instead of using sizedbox(height:5,),  we can use Gap(5) => for that we should get this dependency gap: ^2.0.0