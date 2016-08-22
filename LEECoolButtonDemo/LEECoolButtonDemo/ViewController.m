//
//  ViewController.m
//  LEECoolButtonDemo
//
//  Created by 李响 on 16/8/21.
//  Copyright © 2016年 lee. All rights reserved.
//

#import "ViewController.h"

#import "LEECoolButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat margin = CGRectGetWidth(self.view.frame) / 4 - 10;
    
    //星星按钮
    
    LEECoolButton *starButton = [LEECoolButton coolButtonWithImage:[UIImage imageNamed:@"star"] ImageFrame:CGRectMake(10, 10, 20, 20)];
    
    starButton.frame = CGRectMake(margin, 100, 40, 40);
    
    [starButton addTarget:self action:@selector(starButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:starButton];
    
    //心型按钮
    
    LEECoolButton *heartButton = [LEECoolButton coolButtonWithImage:[UIImage imageNamed:@"heart"] ImageFrame:CGRectMake(10, 10, 20, 20)];
    
    heartButton.frame = CGRectMake(margin * 2, 100, 40, 40);
    
    heartButton.imageColorOn = [UIColor colorWithRed:254/255.0f green:110/255.0f blue:111/255.0f alpha:1.0f];
    
    heartButton.circleColor = [UIColor colorWithRed:254/255.0f green:110/255.0f blue:111/255.0f alpha:1.0f];
    
    heartButton.lineColor = [UIColor colorWithRed:226/255.0f green:96/255.0f blue:96/255.0f alpha:1.0f];
    
    [heartButton addTarget:self action:@selector(heartButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:heartButton];
    
    //喜欢按钮
    
    LEECoolButton *likeButton = [LEECoolButton coolButtonWithImage:[UIImage imageNamed:@"like"] ImageFrame:CGRectMake(10, 10, 20, 20)];
    
    likeButton.frame = CGRectMake(margin * 3, 100, 40, 40);
    
    likeButton.imageColorOn = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0f];
    
    likeButton.circleColor = [UIColor colorWithRed:52/255.0f green:152/255.0f blue:219/255.0f alpha:1.0f];
    
    likeButton.lineColor = [UIColor colorWithRed:41/255.0f green:128/255.0f blue:185/255.0f alpha:1.0f];
    
    [likeButton addTarget:self action:@selector(likeButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:likeButton];
    
}

#pragma mark - 按钮点击事件

- (void)starButtonAction:(LEECoolButton *)sender{
    
    if (sender.selected) {
        
        //未选中状态
        
        [sender deselect];
        
    } else {
        
        //选中状态
        
        [sender select];
    }
    
}

- (void)heartButtonAction:(LEECoolButton *)sender{
    
    if (sender.selected) {
        
        [sender deselect];
        
    } else {
        
        [sender select];
    }
    
}

- (void)likeButtonAction:(LEECoolButton *)sender{
    
    if (sender.selected) {
        
        [sender deselect];
    
    } else {
    
        [sender select];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
