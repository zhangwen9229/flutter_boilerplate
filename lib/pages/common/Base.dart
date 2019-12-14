import 'package:flutter/material.dart';

abstract class BasePage extends StatefulWidget {
  BasePage({Key key}) : super(key: key);
}

abstract class BaseState<Page extends BasePage> extends State<Page> {
  String screenName();
}

mixin BasicPage<Page extends BasePage> on BaseState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(screenName()),
        ),
        body: Container(
          child: body(context),
          // color: Colors.amber,
        ),
        floatingActionButton: fab(context));
  }

  Widget body(BuildContext context);

  Widget fab(BuildContext context) => Container();
}
