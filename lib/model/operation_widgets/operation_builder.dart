import 'package:flutter/material.dart';
import 'package:flutter_web_res/core/utlis/is_responsive.dart';
import 'package:flutter_web_res/model/operation_widgets/operation_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OperationDetails extends StatelessWidget {
  OperationDetails({Key? key}) : super(key: key);

  final List<OperationModel> operationBodyView = [
    OperationModel(
        earningsPersentege: '12%',
        moneyValue: '\$610,839',
        earningsIcon: Icon(
          Icons.data_thresholding_outlined,
          color: Colors.green,
        ),
        titleIcon: Icon(Icons.money),
        title: 'Total Revenue',
        endString: 'vs last 7 days'),
    OperationModel(
        earningsPersentege: '0.4%',
        moneyValue: '\$513,456',
        earningsIcon: Icon(
          Icons.data_thresholding_outlined,
          color: Colors.red,
        ),
        titleIcon: Icon(Icons.person_4_outlined),
        title: 'Total Customer',
        endString: 'vs last 7 days'),
    OperationModel(
        earningsPersentege: '8%',
        moneyValue: '\$637,902',
        earningsIcon: Icon(
          Icons.data_thresholding_outlined,
          color: Colors.green,
        ),
        titleIcon: Icon(Icons.paid),
        title: 'Total Transacton',
        endString: 'vs last 7 days'),
    OperationModel(
      earningsPersentege: '2%',
      moneyValue: '\$256,600',
      earningsIcon: Icon(
        Icons.shopping_bag,
        color: Colors.green,
      ),
      titleIcon: Icon(Icons.paid),
      title: 'Total Product',
      endString: 'vs last 7 days',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: IsResponsive.isMobileScreen(context) ? 2 : 4,
          childAspectRatio: IsResponsive.isMobileScreen(context) ? 2.5 : 2,
          crossAxisSpacing: !IsResponsive.isMobileScreen(context) ? 15 : 10,
       //mainAxisSpacing: !IsResponsive.isMobileScreen(context) ? 5.h : 10,
          ),
      itemBuilder: (context, index) {
        return Container(
          margin:  EdgeInsetsDirectional.all(1.w),
          padding: EdgeInsetsDirectional.all(5.sp),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(15.sp),
              color: Colors.white),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      operationBodyView[index].titleIcon,
                      Text(operationBodyView[index].title)
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            operationBodyView[index].moneyValue,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              operationBodyView[index].earningsIcon,
                              SizedBox(
                                width: 1.w,
                              ),
                              Text(
                                '16%',
                                style: TextStyle(
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Row(
                            children: [
                              Text(
                                operationBodyView[index].endString,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10.sp),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: operationBodyView.length,
    );
  }
}
