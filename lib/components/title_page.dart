import 'package:flutter/material.dart';
import 'package:migservice/components/constants.dart';
import 'package:migservice/components/size_progect.dart';
import 'package:migservice/components/title_with_more_btn.dart';
import 'attention_page.dart';



class TitlePag extends StatelessWidget {
  final String title;

  const TitlePag ({Key key, this.title,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: TitleWithMoreBtn(title: title,
          kSize: kMobilSize ,press: () {
            Navigator.push(context, PageRouteBuilder(
            opaque: false,
            pageBuilder: (BuildContext context, _, __) => AttentionPage(kSize: kMobilSize,)));
          },
          ),
        tablet: TitleWithMoreBtn(title: title,
          kSize: kTabletSize ,press: () {
              Navigator.push(context, PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) => AttentionPage(kSize: kTabletSize,)));
            },),
        desktop: TitleWithMoreBtn(title: title,
          kSize: kTabletSize ,press: () {
              Navigator.push(context, PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, _, __) => AttentionPage(kSize: kDesktopSize,)));
            },)
    );
  }
}

