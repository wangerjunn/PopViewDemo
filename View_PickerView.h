//
//  View_PickerView.h
//  GoToSchool
//
//  Created by 花花 on 16/3/31.
//  Copyright © 2016年 UI. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickDoneBlock)(NSString *content);

@interface View_PickerView : UIView

@property (copy, nonatomic) ClickDoneBlock clickDoneBlock;




/**
 UIPickerView
 
 @param arr 数组内容，1组内容时数组内为NSString类型
         数组内容大于2组时，数据格式为 [{
                                         title:title;
                                         data:[{
                                             title:title;
                                             data:[{
                                             
                                             }]
                                         },]
                                    }]
 
 @param title viewTitle
 @param clickDoneBlock 点击完成回调
 @param numberOfCompoent 分组内容
 @return self
 */
- (instancetype)initPickerViewByArr:(NSArray *)arr
                              title:(NSString *)title
                              block:(ClickDoneBlock)clickDoneBlock
                  numberOfComponent:(NSInteger)numberOfCompoent;


/**
 Description

 @param viewTitle 可为nil，无title
 @param minDate 最小时间，可为nil，默认无最小时间
 @param maxDate 最大时间，可为nil，默认无最大时间
 @param mode UIDatePickerMode
 @param dateFormat ，默认UIDatePickerModeDateAndTime类型
 @param block 点击完成回调
 @return self
 */
- (instancetype)initDatePickerViewByViewTitle:(NSString *)viewTitle
                                      minDate:(NSDate *)minDate
                                      maxDate:(NSDate *)maxDate
                             UIDatePickerMode:(UIDatePickerMode)mode
                                   dateFormat:(NSString *)dateFormat
                               clickDoneBlock:(ClickDoneBlock)block;

//显示view
- (void)show;

@end
