//
//  DaShiJianTableViewCell2.h
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-12.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol DaShiJianTableViewCellDelegate2 <NSObject>

-(void)pingLunBtnClickWithNumberIndexRow:(NSString*)numberIndexRow;

-(void)yinPinBtnClickWithNumberIndexRow:(NSString*)numberIndexRow;

-(void)deleteBtnClickWithNumberIndexRow:(NSString*)numberIndexRow;

-(void)photoBtnClickWithNumberIndexRow:(NSString*)numberIndexRow andTag:(int)tag;
@end

@interface DaShiJianTableViewCell2 : UITableViewCell

@property(nonatomic,assign)id<DaShiJianTableViewCellDelegate2> delegate2;
@property(nonatomic,strong)NSString *numberIndexRow;
@property(nonatomic,assign)BOOL canShowBigPhoto;

-(void)resetViewView:(NSDictionary *)dic;

-(float)getCellHeight:(NSDictionary *)dic;
@end
