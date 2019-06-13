# full_icon_button

A button with icon around it.

FullIconButton 继承自MaterialButton，在构造函数里我加了这些属性
```
    double minWidth,
    double height,
    Widget leftIcon,
    Widget topIcon,
    Widget rightIcon,
    Widget bottomIcon,
    EdgeInsetsGeometry textPadding,
```
我们可以定义宽高，上下左右图标，还有文字和图标的间距，这样用起来会比较方便了。当然如果你有其他需求一样可以自己加进去。
另外我们用了`Column`,`Row`,`Offstage`；`Column`控制竖排的widget，`Row`控制横排的widget，`Offstage`控制icon的显示或隐藏，`Offstage `有2个属性`offstage`和`child`，其中offstage=true时`Offstage `就不显示了。
下面我们用下这个`FullIconButton`
```
FullIconButton(
  label: Text("GitHub登录"),
  color: Colors.blue,
  textColor: Colors.white,
  onPressed: () {},
  minWidth: double.infinity,
  leftIcon: Image.asset(
    "images/icon_github.png",
    width: 24,
    height: 24,
    color: Colors.white,
  ),
  rightIcon: Icon(Icons.group),
  topIcon: Text("我是👆"),
  bottomIcon: Text("我是👇"),
  textPadding: EdgeInsets.only(left: 10, right: 10),
)
```
效果如下：
![WechatIMG3.png](https://upload-images.jianshu.io/upload_images/7913085-771e7af8049c9939.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

当然四周定义的是widget，所以你可以放任何widget进去，不只是icon。通过这个自定义Button，我们可以定义任何我们想要的通用的widget，不明白或者遇到问题的时候查看下源码是怎么做的就可以了。


## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
