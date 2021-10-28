## Getting Started
xbutton is a button that can support multiple styles, including shadow, shadow color, rounded corners, click color, normal text, icon, and custom components.
Relying only on native controls, no third-party plug-ins, easy to use

## How to use it.
```
Wrap(
                direction: Axis.horizontal,
                spacing: 12,
                runSpacing: 12,
                children: [
              XButton.text(
                text: "填充文本样式",
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
            ])
```


