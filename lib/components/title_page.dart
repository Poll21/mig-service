import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/size_progect.dart';
import 'package:migservice/components/title_with_more_btn.dart';



class TitlePag extends StatelessWidget {
  const TitlePag ({
    Key key,
    this.title,

  }) : super(key: key);
    final String title;
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: TitleWithMoreBtn(title: title,
          kSize: kMobilSize ,press: () {},),
        tablet: TitleWithMoreBtn(title: title,
          kSize: kTabletSize ,press: () {},),
        desktop: TitleWithMoreBtn(title: title,
          kSize: kTabletSize ,press: () {},)
    );
  }
}
