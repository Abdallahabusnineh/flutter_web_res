import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_res/model/image_model/image_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utlis/is_responsive.dart';

class ImageBuilder extends StatelessWidget {
  ImageBuilder({super.key});

  final List<ImageModel> imageBuilder = [
    ImageModel(image: ('assets/1.png')),
    ImageModel(image: ('assets/2.png')),
    ImageModel(image: ('assets/3.png')),
    ImageModel(image: ('assets/4.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: IsResponsive.isMobileScreen(context) ? 1 : 2,
        crossAxisSpacing: !IsResponsive.isMobileScreen(context) ? 15 : 10,
      ),
      itemCount: imageBuilder.length,
      itemBuilder: (context, index) {
        return Container(
            color: Colors.white,
            child: //Text(''),
                Image(image: AssetImage(imageBuilder[index].image)));
      },
    );
  }
}
