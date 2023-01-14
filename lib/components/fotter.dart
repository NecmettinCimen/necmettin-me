import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:necport/constants/assets.dart';
import 'package:necport/constants/strings.dart';
import 'package:necport/constants/text_styles.dart';
import 'package:necport/widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class Fotter extends StatelessWidget {
  const Fotter({key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  // Footer Methods:------------------------------------------------------------
  Widget buildFooter(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(),
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                child: buildCopyRightText(context),
                alignment: Alignment.centerLeft,
              ),
              Align(
                child: buildSocialIcons(),
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCopyRightText(BuildContext context) {
    return Text(
      Strings.rights_reserved,
      style: TextStyles.body1.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 8 : 10.0,
      ),
    );
  }

  Widget buildSocialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          onPressed: () async {
            await launch("https://linkedin.com/in/necmettincimen");
          },
          child: Image.network(
            Assets.linkedin,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
        SizedBox(width: 16.0),
        MaterialButton(
          onPressed: () async {
            await launch("https://github.com/necmettincimen");
          },
          child: Image.network(
            Assets.github,
            color: Color(0xFF45405B),
            height: 20.0,
            width: 20.0,
          ),
        ),
      ],
    );
  }
}
