//
//  firstXiangQingTableViewCell2.h
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-12.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol firstXiangQingTableViewCell2 <NSObject>

-(void)pingLunBtnClickWithNumberIndexRow:(NSString*)numberIndexRow;

-(void)yinPinBtnClickWithNumberIndexRow:(NSString*)numberIndexRow;

-(void)deleteBtnClickWithNumberIndexRow:(NSString*)numberIndexRow;

-(void)photoBtnClickWithNumberIndexRow:(NSString*)numberIndexRow andTag:(int)tag;

@end

@interface firstXiangQingTableViewCell2 : UITableViewCell

@property(nonatomic,assign)id<firstXiangQingTableViewCell2> delegate2;
@property(nonatomic,strong)NSString *numberIndexRow;
@property(nonatomic,assign)BOOL canShowBigPhoto;


-(void)resetViewView:(NSDictionary *)dic;

-(float)getCellHeight:(NSDictionary *)dic;
@end