import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({Key? key}) : super(key: key);
  Color backgroundColor = Color(0xff181A56);
  Color circleColor = Color(0xffe06df6);
  Color buttonColor = Colors.white;

  Widget get emptyBox => SizedBox(width: Get.width * 0.18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildTop(),
                Column(
                  children: [
                    Row(
                      children: [
                        emptyBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Joy',
                              style: Theme.of(context).textTheme.headline3!.copyWith(
                                    color: buttonColor,
                                  ),
                            ),
                            Text(
                              'Mitchell',
                              style: Theme.of(context).textTheme.headline3!.copyWith(
                                    color: buttonColor,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox()
                      ],
                    ),
                    SizedBox(height: Get.height * 0.05),
                    buildMenuItem(context, Icons.coffee_maker_outlined, 'Templates'),
                    SizedBox(height: 15),
                    buildMenuItem(context, Icons.category, 'Categories'),
                    SizedBox(height: 15),
                    buildMenuItem(context, Icons.add_chart, 'Analytics'),
                    SizedBox(height: 15),
                    buildMenuItem(context, Icons.settings, 'Settings'),
                  ],
                ),
                Row(
                  children: [
                    emptyBox,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          // width: 200,
                          alignment: Alignment.centerLeft,
                          child: Image.asset('assets/images/chart.png', fit: BoxFit.cover),
                        ),
                        Text(
                          'Good',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12, color: buttonColor.withOpacity(.4), fontWeight: FontWeight.normal),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Consistency',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontSize: 18, color: buttonColor, fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }

  Row buildMenuItem(BuildContext context, icon, text) {
    return Row(
      children: [
        emptyBox,
        Icon(
          icon,
          color: buttonColor.withOpacity(.5),
        ),
        SizedBox(width: 20),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(fontSize: 18, color: buttonColor, fontWeight: FontWeight.normal),
        )
      ],
    );
  }

  Row buildTop() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            SizedBox(height: 35),
            buildCircular(),
          ],
        ),
        buildDrawerButton()
      ],
    );
  }

  Container buildDrawerButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: buttonColor, width: 1),
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        color: buttonColor,
        onPressed: () {
          Get.toNamed('/home');  
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }

  Container buildCircular() {
    return Container(
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 90,
              child: Image.asset('assets/images/profile.png'),
            ),
          ),
          Transform.rotate(
            angle: 6,
            child: Container(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(circleColor),
                color: Colors.black,
                backgroundColor: Colors.white,
                value: 0.49,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
