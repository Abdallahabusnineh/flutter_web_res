import 'package:flutter/material.dart';
import 'package:flutter_web_res/core/utlis/is_responsive.dart';


class HomeScreenRes extends StatelessWidget {
  const HomeScreenRes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: IsResponsive.isWebScreen(context)
          ? null
          : Drawer(
        child: Container(
          color: Colors.red,
        ),
      ),
      body: Row(
        children: [
          if (IsResponsive.isWebScreen(context))
            Container(
              width: MediaQuery.of(context).size.width * .2,
              color: Colors.black87,
            ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: IsResponsive.isWebScreen(context)?2:1,
                      child: Container(
                        height: 66,
                        color: Colors.red,
                        child: Text('Dashboard'),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.lightBlue,
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                ),
                              )),
                          Icon(
                            Icons.ac_unit,
                            size: 50,
                          ),
                          Icon(
                            Icons.ac_unit,
                            size: 50,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.start,
                      alignment: WrapAlignment.start,
                      runAlignment: WrapAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          color: Colors.orange,
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .2,
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          color: Colors.orange,
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .2,
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          color: Colors.orange,
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .2,
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                    child: GridView.builder(
                        itemCount: 10,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: IsResponsive.isWebScreen(context) ? 3 : 2),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(8),
                            color: Color(
                                int.parse('0xff${index}c${index}4b${index}')),
                          );
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }


}