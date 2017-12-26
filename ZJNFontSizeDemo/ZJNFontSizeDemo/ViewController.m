//
//  ViewController.m
//  ZJNFontSizeDemo
//
//  Created by 朱佳男 on 2017/12/22.
//  Copyright © 2017年 ShangYuKeJi. All rights reserved.
//

#import "ViewController.h"
#import "UIView+FontSize.h"
#define Screen_width [UIScreen mainScreen].bounds.size.width
#define Screen_height [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *testLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 250, Screen_width-20, 20)];
    testLabel.textAlignment = NSTextAlignmentCenter;
    testLabel.font = [UIFont systemFontOfSize:17];
    testLabel.text = @"Label";
    [self.view addSubview:testLabel];
    
    UIButton *testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testButton.frame = CGRectMake((Screen_width-100)/2.0, 290, 100, 30);
    testButton.titleLabel.font = [UIFont systemFontOfSize:15];
    [testButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [testButton setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:testButton];
    
    UITextField *testField = [[UITextField alloc]initWithFrame:CGRectMake((Screen_width-100)/2.0, 330, 100, 30)];
    testField.textAlignment = NSTextAlignmentCenter;
    testField.font = [UIFont systemFontOfSize:14];
    testField.text = @"textField";
    [self.view addSubview:testField];
    
    UITextView *testTextView = [[UITextView alloc]initWithFrame:CGRectMake((Screen_width-100)/2.0, 380, 100, 50)];
    testTextView.textAlignment = NSTextAlignmentCenter;
    testTextView.font = [UIFont systemFontOfSize:14];
    testTextView.text = @"textView";
    [self.view addSubview:testTextView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
