//
//  ViewController.m
//  keyboard_text
//
//  Created by 毛韶谦 on 16/6/13.
//  Copyright © 2016年 毛韶谦. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *myTextField;
@property (strong, nonatomic) IBOutlet UILabel *showContent;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kWidth, 40)];
    myView.backgroundColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1];
    
    //UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    //添加按钮到BarButton
    UIButton *Button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [Button1 setTitle:@"取消" forState:UIControlStateNormal];
    [Button1 addTarget:self action:@selector(cancelButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    Button1.titleLabel.font = [UIFont systemFontOfSize:18];
    [Button1 setTitleColor:COLOR_05 forState:UIControlStateNormal];
    [myView addSubview:Button1];
    
    //UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    //添加按钮到BarButton
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeSystem];
    [Button setTitle:@"确定" forState:UIControlStateNormal];
    [Button addTarget:self action:@selector(finishButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    Button.titleLabel.font = [UIFont systemFontOfSize:18];
    [Button setTitleColor:COLOR_06 forState:UIControlStateNormal];
    [myView addSubview:Button];
    [Button1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(@10);
        make.top.mas_offset(@10);
        make.width.mas_equalTo(@50);
        make.height.mas_equalTo(@21);
    }];
    [Button mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.mas_equalTo(myView.mas_right).mas_offset(-10);
        make.top.mas_offset(@10);
        make.width.mas_equalTo(@50);
        make.height.mas_equalTo(@21);
    }];
    
    self.myTextField.inputAccessoryView = myView;
    [self.myTextField setKeyboardType:UIKeyboardTypeNumberPad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)ending:(UITapGestureRecognizer *)sender {
    
    [self.view endEditing:YES];
//    [self.myTextField resignFirstResponder];
}

- (void)finishButtonAction:(UIButton *)sender {
    
    self.showContent.text = self.myTextField.text;
}

- (void)cancelButtonAction:(UIButton *)sender {
    
     self.showContent.text = @"000";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
