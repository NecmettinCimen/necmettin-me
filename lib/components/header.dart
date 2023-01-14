import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:necport/constants/strings.dart';
import 'package:necport/constants/text_styles.dart';
import 'package:necport/widgets/responsive_widget.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  //AppBar Methods:-------------------------------------------------------------
  PreferredSizeWidget buildAppBar(BuildContext context, int active) {
    return AppBar(
      titleSpacing: 0.0,
      title: _buildTitle(),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: !ResponsiveWidget.isSmallScreen(context) ? _buildActions(context, active) : null,
    );
  }

  Widget _buildTitle() {
    return RichText(
      text: TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: <TextSpan>[
          TextSpan(
            text: Strings.necmettin,
            style: TextStyles.logo,
          ),
          TextSpan(
            text: Strings.cimen,
            style: TextStyles.logo.copyWith(
              color: Color(0xFF50AFC0),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildActions(context, active) {
    return <Widget>[
      MaterialButton(
        child: Text(
          Strings.menu_home,
          style: active == 0
              ? TextStyles.menu_item.copyWith(
                  color: Color(0xFF50AFC0),
                )
              : TextStyles.menu_item,
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/");
        },
      ),
      MaterialButton(
        child: Text(
          Strings.menu_projects,
          style: active == 1
              ? TextStyles.menu_item.copyWith(
                  color: Color(0xFF50AFC0),
                )
              : TextStyles.menu_item,
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/projects");
        },
      ),
      // MaterialButton(
      //   child: Text(
      //     Strings.menu_contact,
      //     style: TextStyles.menu_item,
      //   ),
      //   onPressed: () {},
      // ),
    ];
  }

  Widget? buildDrawer(BuildContext context, int active) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Drawer(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: _buildActions(context, active),
            ),
          )
        : null;
  }
}
