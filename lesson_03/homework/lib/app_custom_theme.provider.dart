import 'package:flutter/material.dart';

class AppCustomThemeProvider extends InheritedWidget {
  final Widget child;
  final AppCustomTheme appCustomTheme;

  AppCustomThemeProvider({@required this.appCustomTheme, @required this.child})
      : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static AppCustomThemeProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppCustomThemeProvider>();
}

class AppCustomTheme {
  final Color color1;
  final EdgeInsets sectionPaddings;
  AppCustomTheme({@required this.color1, @required this.sectionPaddings});
}
