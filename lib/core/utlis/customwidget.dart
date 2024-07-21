import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomWidget {
  static PreferredSizeWidget mobileAppBar() {
    return AppBar(
      title: Text('Dashboard',
      ),
      backgroundColor: Colors.grey.shade100,
      elevation: 1,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
              Stack(
                children: [
                  const CircleAvatar(
                    child: Icon(
                      Icons.notification_add,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.pink,shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("4",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundImage:
                AssetImage('assets/img.png'),
                radius: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
static  Widget webAppBar() {
    return   AppBar(
      title:  Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  Spacer(),
                  Expanded(
                    child: Container(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 2.h),
                        margin: EdgeInsetsDirectional.all(1.w),
                        child: SearchBar(
                          hintText: 'Search anything',
                          leading: Icon(Icons.search_rounded),
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white),
                          elevation: MaterialStateProperty.all(0),
                        )),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        child: Icon(
                          Icons.notifications,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.red.shade600,
                            radius: 9.sp,
                            child: Center(
                                child: Text(
                                  "4+",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img.png'),
                    radius: 15.sp,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade100,
      elevation: 0,
    );
  }

  static drawer() {
    return Drawer(
      elevation: 5,
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      child: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 3.5.w,
                  ),
                  Image(
                    image: AssetImage('assets/infinte-removebg-preview.png'),
                    width: 5.w,
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('LOOP',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Row(
                  children: [
                    Text('MENU',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
              ListTile(
                leading: IconButton(
              onPressed: () {},
    icon: const Icon(Icons.dashboard)),
                textColor: Colors.blue.shade800,
                iconColor: Colors.blue.shade800,
                splashColor: Colors.blue,
                title: const Text('Overview'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:   IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
                title: const Text('Product'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:     IconButton(
                    onPressed: () {}, icon: const Icon(Icons.people_sharp)),
                title: const Text('Customer'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading: IconButton(onPressed: () {}, icon: const Icon(Icons.label)),
                title: const Text('Transaction'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:  IconButton(
    onPressed: () {},
    icon: const Icon(Icons.bar_chart_outlined)),
                title: const Text('Statistics'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:     IconButton(
    onPressed: () {}, icon: const Icon(Icons.add_alert)),
                title:Text('Campaign'),
                trailing:   ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade600,
                      padding: const EdgeInsets.all(15)),
                ),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:       IconButton(
    onPressed: () {},
    icon: const Icon(Icons.access_time_filled)),
                title: const Text('Log Activity'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
            ],
          ),
          Divider(
            indent: 40,
            endIndent: 40,
            color: Colors.grey.shade300,
            thickness: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: const Row(
                  children: [
                    Text('SUPPORT',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
              ListTile(
                leading:     IconButton(
    onPressed: () {}, icon: const Icon(Icons.settings)),
                title: const Text('Setting'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:  IconButton(
    onPressed: () {}, icon: const Icon(Icons.help_outlined)),
                title: const Text('Help'),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:     IconButton(
    onPressed: () {}, icon: const Icon(Icons.dark_mode)),
                title: const Text('Dark Mode'),
                trailing:     Switch(
                  value: false,
                  onChanged: (value) {},
                  activeColor: Colors.blue,
                  focusColor: Colors.grey,
                ),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}