//
//  pengyouquanTableViewCell.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-12.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "pengyouquanTableViewCell.h"

#import "UIButton+WebCache.h"
#import "TQRichTextView.h"

@interface pengyouquanTableViewCell ()
@property(nonatomic,strong)HJHMyLabel *titleLabel;
@property(nonatomic,strong)HJHMyImageView *rightMinganImageV;
@property(nonatomic,strong)HJHMyImageView *leftMinganImageV;
@property(nonatomic,strong)HJHMyLabel *rightMinganImageVLabel;
@property(nonatomic,strong)TQRichTextView *xiangQingLabel;
@property(nonatomic,strong)HJHMyLabel *createdTimeLabel;
@property(nonatomic,strong)HJHMyImageView *photoImage;
@property(nonatomic,strong)HJHMyButton *pingLunBtn;
@property(nonatomic,strong)HJHMyButton *loveLunBtn;
@property(nonatomic,strong)HJHMyImageView *pingLunTextMainView;
@property(nonatomic,strong)HJHMyImageView *footImageV;
@end

@implementation pengyouquanTableViewCell

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
    self.titleLabel = [[HJHMyLabel alloc]init];
    self.titleLabel.frame = CGRectMake(80, 10, 200, 20);
    self.titleLabel.textColor = [UIColor colorWithHexString:@"4DD0C8"];
    self.titleLabel.font = [UIFont systemFontOfSize:20];
    [self addSubview:self.titleLabel];
    
//    self.rightMinganImageV = [[HJHMyImageView alloc]init];
//    self.rightMinganImageV.contentMode = UIViewContentModeScaleToFill;
//    self.rightMinganImageV.frame = CGRectMake(260, 10, 50, 40);
//    self.rightMinganImageV.image = [UIImage imageNamed:@"biao_q"];
//    [self addSubview:self.rightMinganImageV];
    
    self.leftMinganImageV = [[HJHMyImageView alloc]init];
    self.leftMinganImageV.contentMode = UIViewContentModeScaleToFill;
    self.leftMinganImageV.frame = CGRectMake(10, 10, 60, 60);
    self.leftMinganImageV.layer.cornerRadius = 30;
    self.leftMinganImageV.clipsToBounds = YES;
    self.leftMinganImageV.userInteractionEnabled = NO;
    self.leftMinganImageV.image = [UIImage imageNamed:@""];
    [self addSubview:self.leftMinganImageV];

    
    self.rightMinganImageVLabel = [[HJHMyLabel alloc]init];
    self.rightMinganImageVLabel.frame = CGRectMake(5, 0, 40, 35);
    self.rightMinganImageVLabel.textAlignment = NSTextAlignmentCenter;
    self.rightMinganImageVLabel.textColor = [UIColor whiteColor];
    self.rightMinganImageVLabel.font = [UIFont systemFontOfSize:18];
    [self.rightMinganImageV addSubview:self.rightMinganImageVLabel];
    
    self.xiangQingLabel = [[TQRichTextView alloc]initWithFrame:CGRectMake(80, 0, 190, 0)];
    self.xiangQingLabel.textColor = [UIColor blackColor];
    self.xiangQingLabel.backgroundColor = [UIColor clearColor];
    self.xiangQingLabel.font = [UIFont systemFontOfSize:18];
    self.xiangQingLabel.lineSpacing = 0.1;
    self.xiangQingLabel.userInteractionEnabled = NO;
    [self addSubview:self.xiangQingLabel];
    
    self.photoImage = [[HJHMyImageView alloc]init];
    self.photoImage.backgroundColor = [UIColor clearColor];
    [self addSubview:self.photoImage];
    
    self.createdTimeLabel = [[HJHMyLabel alloc]init];
    self.createdTimeLabel.textColor = [UIColor colorWithHexString:@"666666"];
    self.createdTimeLabel.font = [UIFont systemFontOfSize:18];
    [self addSubview:self.createdTimeLabel];
    
    self.loveLunBtn = [[HJHMyButton alloc]init];
    [self.loveLunBtn setImage:[UIImage imageNamed:@"[p1001].png"] forState:UIControlStateNormal];
    [self.loveLunBtn addTarget:self action:@selector(loveLunBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.loveLunBtn];
    
    self.pingLunBtn = [[HJHMyButton alloc]init];
    [self.pingLunBtn setImage:[UIImage imageNamed:@"edit1.png"] forState:UIControlStateNormal];
    [self.pingLunBtn addTarget:self action:@selector(pingLunBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.pingLunBtn];
    
    self.footImageV = [[HJHMyImageView alloc]init];
    self.footImageV.backgroundColor = [UIColor colorWithHexString:@"C8C7CC"];
    [self addSubview:self.footImageV];
    
    self.pingLunTextMainView = [[HJHMyImageView alloc]init];
    [self addSubview:self.pingLunTextMainView];
}

-(void)resetViewView:(NSDictionary *)dic{
    self.titleLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"nickName"];
    
    self.rightMinganImageVLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"allergyName"];
    
    self.xiangQingLabel.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"articleContent"];
    self.xiangQingLabel.frame = CGRectMake(80, 40, 190, self.xiangQingLabel.drawheigth);
    NSLog(@"%@",self.xiangQingLabel.text);
    
    NSArray *photoArray = [DictionaryStringTool stringFromDictionary:dic forKey:@"photoList"];
    if ([photoArray isKindOfClass:[NSArray class]]) {
        self.photoImage.frame = CGRectMake(80, self.xiangQingLabel.frame.size.height + self.xiangQingLabel.frame.origin.y + 10, 220, ((photoArray.count/3) + 1) *80);
        for (int i = 0; i < photoArray.count; i++) {
            NSDictionary *dict = [photoArray objectAtIndex:i];
            HJHMyButton *photoBtn = [[HJHMyButton alloc]init];
            photoBtn.frame = CGRectMake(80 * (i%3), 80 * (i/3), 75, 75);
            [photoBtn setImageWithURL:[NSURL URLWithString:[DictionaryStringTool stringFromDictionary:dict forKey:@"imageThumbailUrl"]] placeholderImage:nil];
            [self.photoImage addSubview:photoBtn];
        }
    }
    else{
        self.photoImage.frame = CGRectMake(80, self.xiangQingLabel.frame.size.height + self.xiangQingLabel.frame.origin.y + 10, 220, 0);
    }
        
    NSString *createTime = [DictionaryStringTool stringFromDictionary:dic forKey:@"createdTime"];
    self.createdTimeLabel.text = [TimeChange timeChage:createTime];
    self.createdTimeLabel.frame = CGRectMake(80, self.photoImage.frame.size.height + self.photoImage.frame.origin.y + 10, 220, 20);
    
    self.pingLunBtn.frame = CGRectMake(280, self.createdTimeLabel.frame.origin.y, 20, 20);
    self.loveLunBtn.frame = CGRectMake(255, self.createdTimeLabel.frame.origin.y, 20, 20);
    
    NSArray *commentArray = [DictionaryStringTool stringFromDictionary:dic forKey:@"replyList"];
    NSArray *praisesArray = [DictionaryStringTool stringFromDictionary:dic forKey:@"praiseList"];
    
    float lastHeight = 0;
    if ([praisesArray isKindOfClass:[NSArray class]]) {
        HJHMyImageView *topImageV = [[HJHMyImageView alloc]init];
        topImageV.frame = CGRectMake(120, self.createdTimeLabel.frame.size.height + self.createdTimeLabel.frame.origin.y + 1, 11, 9);
        topImageV.image = [UIImage imageNamed:@"gary_ssj"];
        [self addSubview:topImageV];
        NSString *praiseList = @"";
        for (int i = 0; i < praisesArray.count; i++) {
            NSDictionary *dict = [praisesArray objectAtIndex:i];
            if (i == 0) {
                NSString *commentDesc = [DictionaryStringTool stringFromDictionary:dict forKey:@"nickName"];
                praiseList = [NSString stringWithFormat:@"[p1001]%@",commentDesc];
            }
            else{
                NSString *commentDesc = [DictionaryStringTool stringFromDictionary:dict forKey:@"nickName"];
                praiseList = [NSString stringWithFormat:@"%@,[p1001]%@",praiseList,commentDesc];
            }
        }
        TQRichTextView *mainTextView = [[TQRichTextView alloc]initWithFrame:CGRectMake(0, 0, 220, 0)];
        mainTextView.text = praiseList;
        mainTextView.backgroundColor = [UIColor clearColor];
        mainTextView.font = [UIFont systemFontOfSize:18];
        mainTextView.userInteractionEnabled = NO;
        mainTextView.textColor = [UIColor colorWithHexString:@"4DD0C8"];
        mainTextView.lineSpacing = 0.1;
        mainTextView.frame = CGRectMake(0, lastHeight + 5, 220, mainTextView.drawheigth);
        lastHeight += mainTextView.drawheigth;
        [self.pingLunTextMainView addSubview:mainTextView];
        
        self.pingLunTextMainView.frame = CGRectMake(80, self.createdTimeLabel.frame.size.height + self.createdTimeLabel.frame.origin.y + 10, 220, lastHeight+ 5);
        self.pingLunTextMainView.backgroundColor = [UIColor colorWithHexString:@"f1f1f1"];
    }
    if ([commentArray isKindOfClass:[NSArray class]]) {
        
        HJHMyImageView *topImageV = [[HJHMyImageView alloc]init];
        topImageV.frame = CGRectMake(120, self.createdTimeLabel.frame.size.height + self.createdTimeLabel.frame.origin.y + 1, 11, 9);
        topImageV.image = [UIImage imageNamed:@"gary_ssj.png"];
        [self addSubview:topImageV];
        for (int i = 0; i < commentArray.count; i++) {
            NSDictionary *dict = [commentArray objectAtIndex:i];
            NSString *creatorName = [DictionaryStringTool stringFromDictionary:dict forKey:@"editorName"];
            NSString *commentDesc = [DictionaryStringTool stringFromDictionary:dict forKey:@"articleContent"];
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
        self.pingLunTextMainView.frame = CGRectMake(80, self.createdTimeLabel.frame.size.height + self.createdTimeLabel.frame.origin.y + 10, 220, lastHeight+ 5);
        self.pingLunTextMainView.backgroundColor = [UIColor colorWithHexString:@"f1f1f1"];
    }
    else{
        self.pingLunTextMainView.frame = CGRectMake(80, self.createdTimeLabel.frame.size.height + self.createdTimeLabel.frame.origin.y + 10, 220, 0);
    }
    self.footImageV.frame = CGRectMake(0, self.pingLunTextMainView.frame.size.height + self.pingLunTextMainView.frame.origin.y + 10, 320, 0.5);
    
    [self.leftMinganImageV setImageWithURL:[NSURL URLWithString:[DictionaryStringTool stringFromDictionary:dic forKey:@"headImgUrl"]] placeholderImage:[UIImage imageNamed:@"ic_picture_loading.png"]];
}

-(float)getCellHeight:(NSDictionary *)dic{
    [self resetViewView:dic];
    return self.footImageV.frame.origin.y + 1;
}

-(void)pingLunBtnClick{
    [self.delegate2 pingLunBtnClickWithNumberIndexRow:self.numberIndexRow];
}

-(void)loveLunBtnClick{
    [self.delegate2 loveBtnClickWithNumberIndexRow:self.numberIndexRow];
}
@end
