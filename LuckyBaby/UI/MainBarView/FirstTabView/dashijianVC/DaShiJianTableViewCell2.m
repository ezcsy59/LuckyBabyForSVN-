//
//  DaShiJianTableViewCell2.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-12.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "DaShiJianTableViewCell2.h"
#import "UIButton+WebCache.h"
#import "TQRichTextView.h"

@interface DaShiJianTableViewCell2 ()
@property(nonatomic,strong)HJHMyLabel *titleLabel;
@property(nonatomic,strong)TQRichTextView *titleLabel2;
@property(nonatomic,strong)HJHMyImageView *rightMinganImageV;
@property(nonatomic,strong)HJHMyLabel *rightMinganImageVLabel;
@property(nonatomic,strong)TQRichTextView *xiangQingLabel;
@property(nonatomic,strong)HJHMyLabel *createdTimeLabel;
@property(nonatomic,strong)HJHMyLabel *createdTimeLabel2;
@property(nonatomic,strong)HJHMyImageView *photoImage;
@property(nonatomic,strong)HJHMyButton *pingLunBtn;
@property(nonatomic,strong)HJHMyButton *yinPinBtn;
@property(nonatomic,strong)HJHMyButton *deleteBtn;
@property(nonatomic,strong)HJHMyImageView *pingLunTextMainView;
@property(nonatomic,strong)HJHMyImageView *footImageV;

@property(nonatomic,strong)HJHMyImageView *bgImageView;
@property(nonatomic,strong)HJHMyImageView *leftLine;
@property(nonatomic,strong)HJHMyImageView *leftImage;

@property(nonatomic,strong)HJHMyLabel *leftTimeLabel;
@property(nonatomic,strong)HJHMyLabel *leftTimeLabel2;

@property(nonatomic,strong)NSString *voiceUrl;

@property(nonatomic,strong)HJHMyImageView *headPhotoImageV;
@property(nonatomic,strong)HJHMyLabel *headNameLabel;
@end

@implementation DaShiJianTableViewCell2

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(instancetype)init{
    if (self = [super init]) {
        [self setMainView];
    }
    return self;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setMainView];
        
        
    }
    return self;
}

-(void)setMainView{
    self.bgImageView = [[HJHMyImageView alloc]init];
    self.bgImageView.contentMode = UIViewContentModeScaleToFill;
    self.bgImageView.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.bgImageView];
    
    NSDictionary *dic = [plistDataManager getDataWithKey:user_loginList];
    self.headPhotoImageV = [[HJHMyImageView alloc]init];
    [self.headPhotoImageV setImageWithURL:[NSURL URLWithString:[DictionaryStringTool stringFromDictionary:dic forKey:@"portraitUrl"]] placeholderImage:nil];
    self.headPhotoImageV.frame = CGRectMake(20, 20, 60, 60);
    self.headPhotoImageV.layer.cornerRadius = 30;
    self.headPhotoImageV.clipsToBounds = YES;
    [self addSubview:self.headPhotoImageV];
    
    self.headNameLabel = [[HJHMyLabel alloc]init];
    self.headNameLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"nickName"];
    self.headNameLabel.frame = CGRectMake(20, 90, 60, 20);
    self.headNameLabel.textColor = [UIColor blackColor];
    self.headNameLabel.font = [UIFont systemFontOfSize:16];
    self.headNameLabel.textAlignment = NSTextAlignmentCenter;
    self.headNameLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:self.headNameLabel];
    
    self.titleLabel = [[HJHMyLabel alloc]init];
    self.titleLabel.frame = CGRectMake(80, 10, 190, 20);
    self.titleLabel.textColor = [UIColor colorWithHexString:@"4DD0C8"];
    self.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.bgImageView addSubview:self.titleLabel];
    
    self.titleLabel2 = [[TQRichTextView alloc]init];
    self.titleLabel2.frame = CGRectMake(10, 10, 190, 0);
    self.titleLabel2.textColor = [UIColor colorWithHexString:@"93C6E9"];
    self.titleLabel2.font = [UIFont systemFontOfSize:18];
    self.titleLabel2.lineSpacing = 0.1;
    self.titleLabel2.backgroundColor = [UIColor clearColor];
    [self.bgImageView addSubview:self.titleLabel2];
    
    //    self.rightMinganImageV = [[HJHMyImageView alloc]init];
    //    self.rightMinganImageV.contentMode = UIViewContentModeScaleToFill;
    //    self.rightMinganImageV.frame = CGRectMake(260, 10, 50, 40);
    //    self.rightMinganImageV.image = [UIImage imageNamed:@"biao_q"];
    //    [self addSubview:self.rightMinganImageV];
    
    self.rightMinganImageVLabel = [[HJHMyLabel alloc]init];
    self.rightMinganImageVLabel.frame = CGRectMake(5, 0, 40, 35);
    self.rightMinganImageVLabel.textAlignment = NSTextAlignmentCenter;
    self.rightMinganImageVLabel.textColor = [UIColor whiteColor];
    self.rightMinganImageVLabel.font = [UIFont systemFontOfSize:18];
    [self.rightMinganImageV addSubview:self.rightMinganImageVLabel];
    
    self.xiangQingLabel = [[TQRichTextView alloc]initWithFrame:CGRectMake(0, 0, 240, 0)];
    self.xiangQingLabel.textColor = [UIColor blackColor];
    self.xiangQingLabel.backgroundColor = [UIColor clearColor];
    self.xiangQingLabel.font = [UIFont systemFontOfSize:18];
    self.xiangQingLabel.lineSpacing = 0.1;
    self.xiangQingLabel.userInteractionEnabled = NO;
    [self.bgImageView addSubview:self.xiangQingLabel];
    
    self.photoImage = [[HJHMyImageView alloc]init];
    self.photoImage.backgroundColor = [UIColor clearColor];
    [self.bgImageView addSubview:self.photoImage];
    
    self.createdTimeLabel = [[HJHMyLabel alloc]init];
    self.createdTimeLabel.textColor = [UIColor colorWithHexString:@"4DD0C8"];
    self.createdTimeLabel.font = [UIFont systemFontOfSize:12];
    [self.bgImageView addSubview:self.createdTimeLabel];
    
    self.createdTimeLabel2 = [[HJHMyLabel alloc]init];
    self.createdTimeLabel2.textColor = [UIColor colorWithHexString:@"666666"];
    self.createdTimeLabel2.font = [UIFont systemFontOfSize:14];
    [self.bgImageView addSubview:self.createdTimeLabel2];
    
    self.yinPinBtn = [[HJHMyButton alloc]init];
    [self.yinPinBtn setImage:[UIImage imageNamed:@"voice1.png"] forState:UIControlStateNormal];
    [self.yinPinBtn addTarget:self action:@selector(yinPinBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.bgImageView addSubview:self.yinPinBtn];
    
    self.pingLunBtn = [[HJHMyButton alloc]init];
    [self.pingLunBtn setImage:[UIImage imageNamed:@"edit1.png"] forState:UIControlStateNormal];
    [self.pingLunBtn addTarget:self action:@selector(pingLunBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.bgImageView addSubview:self.pingLunBtn];
    
    self.deleteBtn = [[HJHMyButton alloc]init];
    [self.deleteBtn setImage:[UIImage imageNamed:@"delete1.png"] forState:UIControlStateNormal];
    [self.deleteBtn addTarget:self action:@selector(deleteBtnBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.bgImageView addSubview:self.deleteBtn];
    
    self.footImageV = [[HJHMyImageView alloc]init];
    //    self.footImageV.backgroundColor = [UIColor colorWithHexString:@"C8C7CC"];
    //    [self.bgImageView addSubview:self.footImageV];
    
    self.pingLunTextMainView = [[HJHMyImageView alloc]init];
    [self.bgImageView addSubview:self.pingLunTextMainView];
}

-(void)resetViewView:(NSDictionary *)dic{
    self.titleLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"firstType"];
    
    self.titleLabel.text = [NSString stringWithFormat:@"第一次:%@",self.titleLabel.text];
    
    self.rightMinganImageVLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"allergyName"];
    
    NSArray *photoArray = [DictionaryStringTool stringFromDictionary:dic forKey:@"imageList"];
    if ([photoArray isKindOfClass:[NSArray class]]) {
        self.photoImage.frame = CGRectMake(80, 40, 220, (((photoArray.count - 1)/3) + 1) *75);
        for (int i = 0; i < photoArray.count; i++) {
            NSDictionary *dict = [photoArray objectAtIndex:i];
            HJHMyButton *photoBtn = [[HJHMyButton alloc]init];
            photoBtn.frame = CGRectMake(75 * (i%3), 75 * (i/3), 70, 70);
            [photoBtn setImageWithURL:[NSURL URLWithString:[DictionaryStringTool stringFromDictionary:dict forKey:@"imageThumbailUrl"]] placeholderImage:nil];
            [self.photoImage addSubview:photoBtn];
            
            if (!self.canShowBigPhoto) {
                photoBtn.userInteractionEnabled = NO;
            }
            photoBtn.tag = i;
            [photoBtn addTarget:self action:@selector(photoBtnClick:) forControlEvents:UIControlEventTouchUpInside];
            
            if ([[DictionaryStringTool stringFromDictionary:dict forKey:@"mediaType"] isEqualToString:@"V"]) {
                HJHMyImageView *imageV = [[HJHMyImageView alloc]init];
                imageV.frame = CGRectMake(photoBtn.frame.size.width/4, photoBtn.frame.size.height/4, photoBtn.frame.size.width/2, photoBtn.frame.size.height/2);
                imageV.backgroundColor = [UIColor clearColor];
                imageV.userInteractionEnabled = NO;
                [imageV setImage:[UIImage imageNamed:@"video_play.png"]];
                [photoBtn addSubview:imageV];
            }
        }
    }
    else{
        CGRectMake(80, 10 + self.titleLabel.frame.origin.y + self.titleLabel.frame.size.height, 240, 0);
    }
    
    self.titleLabel2.text = [NSString stringWithFormat:@"[p1000]%@",[DictionaryStringTool stringFromDictionary:dic forKey:@"storyPlace"]];
    
    if (self.titleLabel2.text.length > 8 && [[DictionaryStringTool stringFromDictionary:dic forKey:@"storyPlace"]isKindOfClass:[NSString class]])  {
        self.titleLabel2.frame = CGRectMake(80, self.photoImage.frame.size.height + self.photoImage.frame.origin.y + 10, 220, self.titleLabel2.drawheigth);
    }
    else{
        self.titleLabel2.frame = CGRectMake(80, self.photoImage.frame.size.height + self.photoImage.frame.origin.y + 0, 300, 0);
    }
    
    self.xiangQingLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"storyDesc"];
    self.xiangQingLabel.frame = CGRectMake(80, self.titleLabel2.frame.size.height + self.titleLabel2.frame.origin.y + 10, 220, self.xiangQingLabel.drawheigth);
    NSLog(@"%@",self.xiangQingLabel.text);
    
    NSString *create = [DictionaryStringTool stringFromDictionary:dic forKey:@"creatorName"];
    if (![create isKindOfClass:[NSString class]]) {
        create = @"";
    }
    NSString *createTime = [DictionaryStringTool stringFromDictionary:dic forKey:@"createdDatetime"];
    if (createTime.length >= 3) {
        createTime = [createTime substringToIndex:createTime.length - 3];
        createTime = [TimeChange timeChage:createTime];
    }
    NSString *timeStr = [createTime substringFromIndex:5];
    timeStr = [timeStr substringToIndex:timeStr.length - 3];
    self.createdTimeLabel.text = [NSString stringWithFormat:@"%@:",create];
    self.createdTimeLabel2.text = [NSString stringWithFormat:@"%@",timeStr];
    self.createdTimeLabel2.frame = CGRectMake(80, self.xiangQingLabel.frame.size.height + self.xiangQingLabel.frame.origin.y + 10, 200, 20);
    
    self.pingLunBtn.frame = CGRectMake(265, self.createdTimeLabel2.frame.origin.y, 30, 30);
    
    NSString *yinPinUrl = [DictionaryStringTool stringFromDictionary:dic forKey:@"voiceUrl"];
    if ([yinPinUrl isKindOfClass:[NSString class]]) {
        if (yinPinUrl.length > 0) {
            self.yinPinBtn.frame = CGRectMake(230, self.createdTimeLabel2.frame.origin.y, 30, 30);
            self.voiceUrl = yinPinUrl;
        }
        else{
            self.yinPinBtn.hidden = YES;
        }
    }
    
    NSDictionary *diction = [plistDataManager getDataWithKey:user_loginList];
    NSString *canShowDelete = [DictionaryStringTool stringFromDictionary:diction forKey:@"childFamilyRelationsRole"];
    if ([canShowDelete isEqualToString:@"0"]) {
        if (self.yinPinBtn.hidden == YES) {
            self.deleteBtn.frame = CGRectMake(230, self.createdTimeLabel2.frame.origin.y, 30, 30);
        }
        else{
            self.deleteBtn.frame = CGRectMake(195, self.createdTimeLabel2.frame.origin.y, 30, 30);
        }
    }
    else{
        self.deleteBtn.hidden = YES;
    }
    
    NSArray *commentArray = [DictionaryStringTool stringFromDictionary:dic forKey:@"commentList"];
    if ([commentArray isKindOfClass:[NSArray class]]) {

        float lastHeight = 0;
        for (int i = 0; i < commentArray.count; i++) {
            NSDictionary *dict = [commentArray objectAtIndex:i];
            NSString *creatorName;
            if ([[DictionaryStringTool stringFromDictionary:diction forKey:@"userId"] integerValue] ==[[DictionaryStringTool stringFromDictionary:dict forKey:@"createdBy"] integerValue]) {
                creatorName = @"我";
            }
            else{
                creatorName = [DictionaryStringTool stringFromDictionary:dict forKey:@"creatorName"];
            }
            NSString *commentDesc = [DictionaryStringTool stringFromDictionary:dict forKey:@"commentDesc"];
            TQRichTextView *mainTextView = [[TQRichTextView alloc]initWithFrame:CGRectMake(0, 0, 220, 0)];
            mainTextView.text = [NSString stringWithFormat:@"%@: %@",creatorName,commentDesc];
            mainTextView.backgroundColor = [UIColor clearColor];
            mainTextView.font = [UIFont systemFontOfSize:18];
            mainTextView.userInteractionEnabled = NO;
            mainTextView.textColor = [UIColor colorWithHexString:@"666666"];
            mainTextView.lineSpacing = 0.1;
            mainTextView.frame = CGRectMake(0, lastHeight + 5, 220, mainTextView.drawheigth);
            lastHeight += mainTextView.drawheigth;
            [self.pingLunTextMainView addSubview:mainTextView];
        }
        self.pingLunTextMainView.frame = CGRectMake(80, self.createdTimeLabel2.frame.size.height + self.createdTimeLabel2.frame.origin.y + 10, 220, lastHeight+ 5);
        self.pingLunTextMainView.backgroundColor = [UIColor whiteColor];
    }
    else{
        self.pingLunTextMainView.frame = CGRectMake(80, self.createdTimeLabel2.frame.size.height + self.createdTimeLabel2.frame.origin.y + 10, 220, 0);
    }
    
    self.footImageV.frame = CGRectMake(0, self.pingLunTextMainView.frame.size.height + self.pingLunTextMainView.frame.origin.y + 10, 320, 0.5);
    
    self.bgImageView.frame = CGRectMake(10, 5, 300, self.pingLunTextMainView.frame.size.height + self.pingLunTextMainView.frame.origin.y + 5);
}

-(float)getCellHeight:(NSDictionary *)dic{
    [self resetViewView:dic];
    return self.footImageV.frame.origin.y + 1;
}

-(void)pingLunBtnClick{
    [self.delegate2 pingLunBtnClickWithNumberIndexRow:self.numberIndexRow];
}

-(void)yinPinBtnClick{
    [self.delegate2 yinPinBtnClickWithNumberIndexRow:self.numberIndexRow];
    
}

-(void)deleteBtnBtnClick{
    [self.delegate2 deleteBtnClickWithNumberIndexRow:self.numberIndexRow];
}

-(void)photoBtnClick:(HJHMyButton *)btn{
    [self.delegate2 photoBtnClickWithNumberIndexRow:self.numberIndexRow andTag:btn.tag];
}
@end
