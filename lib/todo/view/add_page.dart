import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPage extends StatefulWidget {
  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  padding: EdgeInsets.all(5),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed('/home');
                    },
                    icon: Icon(
                      Icons.close_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
        ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue[900],
        elevation: 15,
        splashColor: Colors.red,
        focusColor: Colors.green,
        onPressed: () {},
        label: Row(
          children: [
            Text(
              "New Task",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Icon(
              Icons.expand_less,
              size: 30,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 80.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter new task",
                      hintStyle:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                              size: 25,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Today",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.album,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Opacity(
                opacity: 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.folder_open,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.flag_outlined,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.nightlight_outlined,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
