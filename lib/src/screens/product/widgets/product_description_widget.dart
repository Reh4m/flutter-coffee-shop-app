import 'package:coffe_shop_app/src/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.zero,
      elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWidget(),
          const SizedBox(height: 10),
          _descriptionWidget(),
        ],
      ),
    );
  }

  Widget _titleWidget() {
    return const Text(
      'Description',
      style: TextStyle(
        color: LightTheme.textColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _descriptionWidget() {
    TextStyle readMoreTextStyle = const TextStyle(
      color: LightTheme.primaryColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      height: 1.5,
    );

    return ReadMoreText(
      'Caffe Mocha is a chocolate-flavored variant of a caffè latte. Other commonly used spellings are mochaccino and also mochachino. It is usually served with whipped cream, and topped with a dusting of either cocoa, cinnamon, or both.',
      trimMode: TrimMode.Line,
      trimLines: 3,
      trimCollapsedText: 'Read More',
      trimExpandedText: 'Show Less',
      colorClickableText: LightTheme.primaryColor,
      style: const TextStyle(
        color: LightTheme.textLightColor,
        fontSize: 16,
        fontWeight: FontWeight.w300,
        height: 1.5,
      ),
      moreStyle: readMoreTextStyle,
      lessStyle: readMoreTextStyle,
    );
  }
}
