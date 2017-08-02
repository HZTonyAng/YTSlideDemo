//
//  ViewController.m
//  YTSlideDemo
//
//  Created by TonyAng on 2017/8/2.
//  Copyright © 2017年 TonyAng. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "NextViewController.h"
#import "CKLeftSlideViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"YTSlideDemo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(itemAction)];
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    spacer.width = -10.f;
    self.navigationItem.leftBarButtonItems = @[spacer,item];
}

-(void)itemAction{
    NSLog(@"Left");
    CKLeftSlideViewController *leftSlide = (CKLeftSlideViewController *)[((AppDelegate *)[UIApplication sharedApplication].delegate) leftSlideVc];
    [leftSlide openLeftView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
