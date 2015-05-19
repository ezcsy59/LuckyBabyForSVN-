//
//  KGCalendarView.h
//  KGCalendarView
//
//  Created by 黄嘉宏 on 15-4-7.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FSCalendar.h"

@protocol KGCalendarViewDelegate <NSObject>

-(void)SelectDate:(NSDate *)date;

@end

@interface KGCalendarView : UIView<UIScrollViewDelegate, FSCalendarDataSource, FSCalendarDelegate>

@property (nonatomic, assign) id<KGCalendarViewDelegate> delegate2;

@property (strong,   nonatomic) FSCalendar *calendar;

@property (assign, nonatomic) NSInteger      theme;
@property (assign, nonatomic) FSCalendarFlow flow;
@property (assign, nonatomic) BOOL           lunar;
@property (copy,   nonatomic) NSDate         *selectedDate;
@property (assign, nonatomic) NSUInteger     firstWeekday;

@end
