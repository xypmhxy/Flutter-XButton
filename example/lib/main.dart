import 'package:flutter/material.dart';
import 'package:x_button/xbutton.dart';
import 'package:x_button/xbutton_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getTheme(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child: Wrap(
              direction: Axis.horizontal,
              spacing: 12,
              runSpacing: 12,
              children: [
                XButton.text(
                  text: "填充文本样式",
                  onPressed: () {},
                ),
                XButton.text(
                  minSize: Size(90, 80),
                  text: "自定义大小",
                  onPressed: () {},
                ),
                XButton.text(
                  buttonType: XButtonType.outlined,
                  text: "描边文本样式",
                  color: Colors.black,
                  onPressed: () {},
                ),
                XButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 32,
                    )),
                XButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 32,
                    ),
                    buttonType: XButtonType.outlined),
                XButton.image(
                  assets: "images/ic_pen.png",
                  size: 32,
                  onPressed: () {},
                ),
                XButton.image(
                  assets: "images/ic_pen.png",
                  size: 32,
                  buttonType: XButtonType.outlined,
                  onPressed: () {},
                ),
                Container(
                  child: XButton.image(
                    assets: "images/ic_pen.png",
                    size: 32,
                    buttonType: XButtonType.noBackground,
                    buttonShape: XButtonShape.circle,
                    padding: EdgeInsets.all(8),
                    onPressed: () {},
                  ),
                ),
                XButton.text(
                  buttonType: XButtonType.noBackground,
                  text: "纯文字按钮",
                  color: Colors.black,
                  onPressed: () {},
                ),
                XButton.text(
                  text: "直角填充文本",
                  buttonShape: XButtonShape.rect,
                  onPressed: () {},
                ),
                XButton.text(
                  text: "自定义圆角填充文本",
                  // buttonShape: XButtonShape.roundRect,
                  borderRadius: BorderRadius.circular(32),
                  buttonShape: XButtonShape.roundRect,
                  onPressed: () {},
                ),
                XButton.icon(
                    onPressed: () {},
                    buttonShape: XButtonShape.circle,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 32,
                    )),
                XButton.icon(
                    onPressed: () {},
                    buttonShape: XButtonShape.circle,
                    buttonType: XButtonType.noBackground,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 32,
                    )),
                XButton.icon(
                    onPressed: () {},
                    buttonShape: XButtonShape.roundRect,
                    buttonType: XButtonType.noBackground,
                    borderRadius: BorderRadius.circular(32),
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 32,
                    )),
                XButton.text(
                  buttonType: XButtonType.noBackground,
                  borderRadius: BorderRadius.circular(32),
                  text: "纯文字自定义圆角",
                  color: Colors.black,
                  onPressed: () {},
                ),
                XButton.text(
                  text: "自定义水波纹",
                  overlayColor: Colors.orangeAccent.withAlpha(200),
                  onPressed: () {},
                ),
                XButton.text(
                  buttonType: XButtonType.noBackground,
                  borderRadius: BorderRadius.circular(32),
                  overlayColor: Colors.orangeAccent.withAlpha(200),
                  text: "自定义圆角及水波纹",
                  color: Colors.black,
                  onPressed: () {},
                ),
                XButton.icon(
                    overlayColor: Colors.orangeAccent.withAlpha(200),
                    onPressed: () {},
                    buttonShape: XButtonShape.circle,
                    buttonType: XButtonType.noBackground,
                    icon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 32,
                    )),
              ]),
        )),
      ),
    );
  }

  ThemeData getTheme() {
    return ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(180, 56)),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                splashFactory: InkSplash.splashFactory)),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(180, 56)),
                elevation: MaterialStateProperty.all(2),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                side: MaterialStateProperty.all(BorderSide(
                    width: 1,
                    color: Colors.blueAccent,
                    style: BorderStyle.solid)),
                overlayColor: MaterialStateProperty.all(Colors.black12),
                splashFactory: InkSplash.splashFactory)),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(Size(180, 56)),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
                overlayColor: MaterialStateProperty.all(Colors.black12),
                splashFactory: InkSplash.splashFactory)));
  }
}
