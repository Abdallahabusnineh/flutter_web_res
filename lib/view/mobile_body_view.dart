/*
import 'package:flutter/material.dart';
import 'package:flutter_web_res/model/image_model/image_builder.dart';
import 'package:flutter_web_res/model/operation_widgets/operation_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/utlis/custom_widget.dart';

class MobileBodyViewView extends StatelessWidget {
  const MobileBodyViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 7.sp, vertical: 12.sp),
                    child: SearchBar(
                      hintText: 'Search anything',
                      leading: Icon(Icons.search_rounded),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    )),
              ),
            Spacer(),
            DropdownMenu(
              dropdownMenuEntries: ([]),
              hintText: 'Filter by date range',
              menuHeight: 2.h,
            ),
            ],
          ),
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
            ],
          ),
          //,SizedBox(height: 2.h,),
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
      ),
    );
  }
}
*/
