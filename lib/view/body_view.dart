import 'package:flutter/material.dart';
import 'package:flutter_web_res/core/utlis/customwidget.dart';
import 'package:flutter_web_res/core/utlis/custom_widget.dart';
import 'package:flutter_web_res/core/utlis/is_responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../model/image_model/image_builder.dart';
import '../model/operation_widgets/operation_builder.dart';

class BodyView extends StatelessWidget {
  const BodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      IsResponsive.isWebScreen(context)?
      Column(
        children: [
        CustomWidget.webAppBar(),
            Divider(),
        ],
      ):SizedBox(),
        //toggle buttons
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: ToggleButtons(
                isSelected: isSelcted,
                onPressed: (int index) {},
                selectedColor: Colors.blue,
                color: Colors.black,
                fillColor: Colors.transparent,
                renderBorder: false,
                textStyle: TextStyle(fontSize: 13.sp),
                children: List.generate(labels.length, (index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color:
                          isSelcted[index] ? Colors.blue : Colors.transparent,
                        ),
                      ),
                    ),
                    child: Text(
                      labels[index],
                      style: TextStyle(
                          fontWeight: isSelcted[index]
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  );
                }),
              ),
            ),
            Spacer(),
            DropdownMenu(
              dropdownMenuEntries: ([]),
              hintText: 'Filter by date range',
              menuHeight: 2.h,
            ),
          ],
        ),
        SizedBox(height: 2.h,),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                OperationDetails(),
                SizedBox(height: 2.h,),
                ImageBuilder(),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
