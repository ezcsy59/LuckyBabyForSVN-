//
//  showBigPhotoViewController.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-5.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "showBigPhotoViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface showBigPhotoViewController ()<UIScrollViewDelegate>
@property(nonatomic,strong)NSArray *photoArray;
@property(nonatomic,assign)NSInteger currentX;
@property(nonatomic,strong)HJHMyLabel *footLabel;
@property(nonatomic,strong)HJHMyImageView *tapImageV;
@property(nonatomic,assign)BOOL isLocationPhoto;
@property(nonatomic,assign)BOOL isClassShow;
@property(nonatomic,strong)MPMoviePlayerViewController *theMovie;
@end

@implementation showBigPhotoViewController

-(instancetype)initWithPhotoA:(NSArray*)photoA andTab:(NSInteger)tag isLocationPhoto:(BOOL)isLocationPhoto isClassShow:(BOOL)isClassShow{
    if (self = [super init]) {
        self.photoArray = photoA;
        self.currentX = tag;
        self.isLocationPhoto = isLocationPhoto;
        self.isClassShow = isClassShow;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollV = [[UIScrollView alloc]init];
    scrollV.delegate = self;
    scrollV.backgroundColor = [UIColor blackColor];
    scrollV.frame = CGRectMake(0, 0, ScreenWidth, iPhone5?568:480);
    [scrollV setContentSize:CGSizeMake(320*self.photoArray.count, (iPhone5?568:480) - 90)];
    [scrollV setContentOffset:CGPointMake(self.currentX * 320, 0)];
    scrollV.pagingEnabled = YES;
    scrollV.showsHorizontalScrollIndicator = NO;
    scrollV.showsVerticalScrollIndicator = NO;
    for (int i = 0; i < self.photoArray.count; i++) {
        HJHMyImageView *imageV = [[HJHMyImageView alloc]init];
        imageV.frame = CGRectMake(i*320, 0, 320, (iPhone5?568:480) - 90);
        if (!self.isLocationPhoto) {
            NSDictionary *dic = [self.photoArray objectAtIndex:i];
            NSString *imageString;
            if (self.isClassShow == YES) {
                imageString = [DictionaryStringTool stringFromDictionary:dic forKey:@"photoUrl"];
            }
            else{
                if (((NSString*)[DictionaryStringTool stringFromDictionary:dic forKey:@"mediaOriginalUrl"]).length > 0) {
                    imageString = [DictionaryStringTool stringFromDictionary:dic forKey:@"mediaOriginalUrl"];
                }
                else{
                    imageString = [DictionaryStringTool stringFromDictionary:dic forKey:@"imageThumbailUrl"];
                }
            }
            if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"mediaType"] isEqualToString:@"V"]) {
                HJHMyImageView *imageV2 = [[HJHMyImageView alloc]init];
                imageV2.tag = i;
                imageV2.frame = CGRectMake(imageV.frame.size.width/4, imageV.frame.size.height/4, imageV.frame.size.width/2, imageV.frame.size.width/2);
                imageV2.userInteractionEnabled = YES;
                imageV2.backgroundColor = [UIColor clearColor];
                [imageV2 setImage:[UIImage imageNamed:@"video_play.png"]];
                [imageV addSubview:imageV2];
                
                UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(videoTapClick:)];
                [imageV2 addGestureRecognizer:tap];
            }
            
            NSURL *imageUrl = [NSURL URLWithString:imageString];
            [imageV setImageWithURL:imageUrl placeholderImage:[UIImage imageNamed:@"ic_picture_loading.png"]];
        }
        else{
            imageV.image = [self.photoArray objectAtIndex:i];
        }
        [scrollV addSubview:imageV];
    }
    [self.view addSubview:scrollV];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(popBack)];
    [scrollV addGestureRecognizer:tap];
    
    self.footLabel = [[HJHMyLabel alloc]init];
    self.footLabel.text = [NSString stringWithFormat:@"%ld/%lu",self.currentX + 1,(unsigned long)self.photoArray.count];
    self.footLabel.textColor = [UIColor whiteColor];
    self.footLabel.font = [UIFont systemFontOfSize:22];
    self.footLabel.frame = CGRectMake(0, (iPhone5?568:480) - 90, ScreenWidth, 90);
    self.footLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.footLabel];
    // Do any additional setup after loading the view.
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    self.footLabel.text = [NSString stringWithFormat:@"%d/%lu",((int)scrollView.contentOffset.x/320) + 1,(unsigned long)self.photoArray.count];
}


-(void)popBack{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)videoTapClick:(UITapGestureRecognizer*)tap{
    NSDictionary *dic = [self.photoArray objectAtIndex:tap.view.tag];
    NSString *String = [DictionaryStringTool stringFromDictionary:dic forKey:@"imageOriginalUrl"];
    self.theMovie =[[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL URLWithString:String]];
    [self addChildViewController:self.theMovie];
    self.theMovie.view.frame = CGRectMake(0, 0, 320, (iPhone5?568:480));
    [self.view addSubview:self.theMovie.view];
    self.theMovie.moviePlayer.scalingMode = MPMovieScalingModeNone;
    [self.theMovie.moviePlayer setControlStyle:MPMovieControlStyleNone];
    [self.theMovie.moviePlayer play];
    
    self.tapImageV = [[HJHMyImageView alloc]init];
    self.tapImageV.frame = self.view.bounds;
    [self.view addSubview:self.tapImageV];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideMove)];
    [self.tapImageV addGestureRecognizer:tap2];
}

-(void)hideMove{
    [self.theMovie.view removeFromSuperview];
    [self.theMovie removeFromParentViewController];
    self.theMovie = nil;
    [self.tapImageV removeFromSuperview];
    self.tapImageV = nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
