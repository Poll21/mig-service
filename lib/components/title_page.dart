import 'package:flutter/material.dart';
import 'package:migservice/components/body.dart';
import 'package:migservice/components/constants.dart';
mport 'package:migservice/components/title_with_more_btn.dart';


class TitlePag extends StatelessWidget {
  const TitlePag ({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ',
          kSize: kMobilSize ,press: () {},),
        tablet: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ',
          kSize: kTabletSize ,press: () {},),
        desktop: TitleWithMoreBtn(title: 'СРОЧНЫЙ РЕМОНТ',
          kSize: kTabletSize ,press: () {},)
    );
  }
}