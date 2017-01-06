//
//  ViewController.m
//  PopViewDemo
//
//  Created by 花花 on 2017/1/6.
//  Copyright © 2017年 花花. All rights reserved.
//

#import "ViewController.h"
#import "View_PickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self setTitle:@"PopViewDemo"];
    
    CGFloat wdt_Btn = 150;
    
    UIButton *datePickerBtn = [[UIButton alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2.0-wdt_Btn/2.0, 140, wdt_Btn, 40)];
    
    [self setBtnInfo:@"UIDatePickerView" selector:@selector(showDatePickerView) btn:datePickerBtn];
    
    [self.view addSubview:datePickerBtn];
    
    UIButton *pickerViewBtn = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMinX(datePickerBtn.frame), CGRectGetMaxY(datePickerBtn.frame)+40, CGRectGetWidth(datePickerBtn.frame), CGRectGetHeight(datePickerBtn.frame))];
    
    [self setBtnInfo:@"UIPickerView"
            selector:@selector(showPickerView)
                 btn:pickerViewBtn];
    
    [self.view addSubview:pickerViewBtn];
}

- (void)setBtnInfo:(NSString *)title
          selector:(SEL)sel
               btn:(UIButton *)btn {
    
    btn.layer.cornerRadius = 5;
    btn.layer.masksToBounds = YES;
    btn.layer.borderColor = [UIColor whiteColor].CGColor;
    btn.layer.borderWidth = 1;
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.backgroundColor = [UIColor orangeColor];
    
    [btn addTarget:self
                      action:sel
            forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark -- show DatePickerView
- (void)showDatePickerView {
    View_PickerView *picker = [[View_PickerView alloc]initDatePickerViewByViewTitle:@"UIDatePickerViewDemo" minDate:nil maxDate:nil UIDatePickerMode:UIDatePickerModeDateAndTime dateFormat:nil clickDoneBlock:^(NSString *content) {
        
        NSLog(@"time format is %@",content);
    }];
    
    [picker show];
}

#pragma mark -- show PickerView
- (void)showPickerView {
    
    NSArray *arr = @[@"随便写写1",@"随便写写2",@"随便写写3",@"随便写写4",@"随便写写5",@"随便写写6"];
    View_PickerView *picker = [[View_PickerView alloc]initPickerViewByArr:arr title:@"UIPickerViewDemo" block:^(NSString *content) {
        
    } numberOfComponent:1];
    
    [picker show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
