import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var taskList = [
    [0, 'Daily meeting with team'],
    [1, 'Daily meeting with team1'],
    [0, 'Daily meeting with team2'],
    [0, 'Daily meeting with team7'],
    [1, 'Daily meeting with team3'],
    [1, 'Daily meeting with team4'],
    [1, 'Daily meeting with team1'],
  ];

  var taskContainerList = [
    [0, 40, 'Business'],
    [1, 18, 'Personal'],
    [0, 40, 'Business'],
    [1, 18, 'Personal'],
    [0, 40, 'Business'],
    [1, 18, 'Personal']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[450],
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Get.toNamed('/drawer');  
            },
            icon: Icon(
              Icons.drag_handle,
              color: Colors.grey[400],size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search,color: Colors.grey[400],size: 30,)),
              //SizedBox(width: 10,),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.grey[400],size: 30,))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
              Get.toNamed('/add');  
        },
        backgroundColor: Colors.blue[900],
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: Get.height,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What's up, Joy!",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "CATEGORIES",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        color: Colors.grey.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(height: 120, child: buildContainerList()),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "TODAY'S TASKS",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                        color: Colors.grey.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: buildCardList(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ListView buildCardList() {
    return ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (BuildContext context, int index) {
          var item = taskList[index];
          return Card(
            child: ListTile(
              onTap: () {
                if (item[0] == 1) {
                  item[0] = 0;
                } else {
                  item[0] = 1;
                }
                setState(() {});
              },
              leading: item[0] == 1
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.blueGrey.withOpacity(.3),
                    )
                  : Icon(
                      Icons.circle_outlined,
                      color: Colors.purple[400],
                    ),
              title: Text(
                item[1].toString(),
                style: item[0] == 0
                    ? TextStyle(fontWeight: FontWeight.w600)
                    : TextStyle(
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.lineThrough),
              ),
            ),
          );
        });
  }

  Widget buildContainerList() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: taskContainerList.length,
        itemBuilder: (BuildContext context, index) {
          var item = taskContainerList[index];
          return Row(
            children: [
              Card(
                child: Container(
                  width: 180,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          "${item[1]} tasks",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.5), fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${item[2]}",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 160,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.grey[100],
                              ),
                            ),
                            Container(
                              width: item[1] == 0 ? 15 : 180 - 75,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: item[0] == 0
                                    ? Colors.blue
                                    : Colors.purple[400],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white10,
                 
                  ),
                ),
                elevation: 1,
                shadowColor: Colors.black12,
              ),
              SizedBox(width: 10)
            ],
          );
        });
  }
}
