/*
 *  UIInputToolbarViewController.h
 *
 *  Created by Brandon Hamilton on 2011/05/03.
 *  Copyright 2011 Brandon Hamilton.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 *  THE SOFTWARE.
 */

#import <UIKit/UIKit.h>
#import "UIInputToolbar.h"

@protocol sendMessage <NSObject>
@optional
-(void)postMessage:(NSString*)message;
-(void)removeFormParent;
@end

@interface UIInputToolbarViewController2 : UIViewController <UIInputToolbarDelegate> {
    UIInputToolbar *inputToolbar;
    
    
    UIViewController *delegate2;

    UILabel *countLabel;
    
    id<sendMessage> delegate3;
    
@private
    BOOL keyboardIsVisible;
    //用来处理view跟随inputToolbar改变高度的属性。view不能用全屏显示以用于底页面的textfield切换
    int countOfDiff;
    float rememberDiff;
}

//改变bar栏弹出来的高度,必须填，568为正常值，特殊情况可修改
@property (nonatomic,assign)float changeBarShowY;
@property (nonatomic,assign)BOOL showBarHide;

@property (nonatomic, retain) UIInputToolbar *inputToolbar;
@property (nonatomic, weak) UIViewController *delegate2;
//@property (nonatomic, weak) HJHMainTableViewController *delegate2;
@property (nonatomic, weak) id<sendMessage> delegate3;
@property(nonatomic,retain)UIImageView *notEnableToClickView;
@property(nonatomic,retain) NSString *mineNewComment;
//从外部带来的文字，发送时返回
@property(nonatomic,retain)NSString *returnWords;


//用于调整部分view在弹键盘的高度差
@property(nonatomic,assign)float heightBreak;
-(void)cancelButtonPressed;
@end
