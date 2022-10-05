import 'package:ems/pages/outlet_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var itemList = [
    {"name": "Find Outlet", "path": "assets/shop.png"},
    {"name": "Attendance", "path": "assets/user.png"},
    {"name": "Requests", "path": "assets/letter.png"},
    {"name": "Expense claims", "path": "assets/money.png"},
    {"name": "Tasks", "path": "assets/task.png"},
    {"name": "Reminder", "path": "assets/bell.png"},
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Welcome, Sandev",
                style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 27),
              ),
            ],
          )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: size.height * 0.22,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/drawer_rec.png"),
                        fit: BoxFit.fill)),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/face.png",
                      height: size.height * 0.06,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Sandev Dewthilina",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 19),
                        ),
                        Text(
                          "Email: sandev@gmail.com",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 50),
                              fontSize: 9),
                        ),
                        Text(
                          "Mobile: +94 768 789 255",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 50),
                              fontSize: 9),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.dashboard,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Dashboard")
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.key,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Change Password")
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Settings",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(
                    Icons.settings,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Settings")
                ],
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 18),
        child: Column(
          children: [
            Container(
              height: size.height * 0.18,
              padding: const EdgeInsets.only(left: 30),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/info_block.png"),
                      fit: BoxFit.fill)),
              child: Row(
                children: [
                  Image.asset(
                    "assets/face.png",
                    height: size.height * 0.08,
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Sandev Dewthilina",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      Text(
                        "Last sync: 2022/08/25 9:35 AM",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: size.width * 0.2,
                  color: Colors.grey,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text(
                      "Options",
                    )),
                Container(
                  height: 1,
                  width: size.width * 0.2,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.width * 0.3,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 2),
                    itemCount: itemList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      var item = itemList[index];
                      return Container(
                        padding: const EdgeInsets.only(left: 2, right: 2),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => OutletPage()),
                                );
                              },
                              child: Container(
                                width: size.width * 0.2,
                                height: size.width * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Colors.lightBlue.withOpacity(0.1),
                                          spreadRadius: 8,
                                          blurRadius: 8)
                                    ]),
                                child:
                                    Center(child: Image.asset(item["path"]!)),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              item["name"]!,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
