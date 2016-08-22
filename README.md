# LEECoolButton


[![License GPL](https://img.shields.io/aur/license/yaourt.svg?maxAge=2592000)](https://github.com/lixiang1994/LEECoolButton/blob/master/LICENSE)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/v/LEETheme.svg?style=flat)](http://cocoapods.org/?q= LEECoolButton)&nbsp;
[![CocoaPods](http://img.shields.io/cocoapods/p/LEETheme.svg?style=flat)](http://cocoapods.org/?q= LEECoolButton)&nbsp;
[![Support](https://img.shields.io/badge/support-iOS7%2B-blue.svg?style=flat)](https://www.apple.com/nl/ios/)&nbsp;

一个炫酷的按钮(适用于喜欢 , 点赞 , 收藏等)

###OC重构版

####效果

![](https://github.com/lixiang1994/LEECoolButton/blob/master/LEECoolButton运行效果图.gif)

####使用方法

* 添加一个透明背景的平面图标 如下:

    ![示例图标](https://github.com/lixiang1994/LEECoolButton/blob/master/LEECoolButtonDemo/LEECoolButtonDemo/Assets.xcassets/star.imageset/star.png)

* 引入 `#import "LEECoolButton.h"`
* 初始化按钮对象 添加图片对象 设置图片frame
  `LEECoolButton *starButton = [LEECoolButton coolButtonWithImage:[UIImage imageNamed:@"star"] ImageFrame:CGRectMake(10, 10, 20, 20)];`
* 设置按钮frame
  `starButton.frame = CGRectMake(margin, 100, 40, 40);`
* 一些颜色的自定义设置 (具体属性可查看.h文件)


        //图片选中状态颜色
        starButton.imageColorOn = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0f];
        //圆圈颜色
        starButton.circleColor = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0f];
        //线条颜色
        starButton.lineColor = [UIColor colorWithRed:41/255.0f green:128/255.0f blue:185/255.0f alpha:1.0f];

* 添加点击事件


        [starButton addTarget:self action:@selector(starButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        
         - (void)starButtonAction:(LEECoolButton *)sender{
              if (sender.selected) {
                //未选中状态
                [sender deselect];
              } else {
                //选中状态
                [sender select];
              }
          }



###Swift原版 [点击跳转](https://github.com/okmr-d/DOFavoriteButton)
