//
//  firstXiangQingViewController.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-12.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "firstXiangQingViewController.h"
#import "firstXiangQingTableViewCell2.h"
#import "jianKangNetWork.h"
#import "dongtaiNetWork.h"
#import "showBigPhotoViewController.h"
#define kDefaultToolbarHeight 42
#define kIOS7 0

@interface firstXiangQingViewController ()<UITableViewDataSource,UITableViewDelegate,firstXiangQingTableViewCell2>
@property(nonatomic,strong)NSMutableDictionary *xiangQingDic;
@property(nonatomic,strong)UITableView *_tableView;
@property(nonatomic,strong)NSString *currentIndexrow;
@property(nonatomic,strong)NSString *currentMessage;
@end

@implementation firstXiangQingViewController

-(instancetype)initWithXiangQingDic:(NSDictionary *)xiangQingDic{
    if (self = [super init]) {
        self.xiangQingDic = [[NSMutableDictionary alloc]initWithDictionary:xiangQingDic];
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(saveDiseaseCommentSuccess:) name:@"saveDiseaseCommentSuccess" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(saveDiseaseCommentFail:) name:@"saveDiseaseCommentFail" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(saveStoryCommentSuccess:) name:@"saveStoryCommentSuccess" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(saveStoryCommentFail:) name:@"saveStoryCommentFail" object:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

#pragma mark -logic data
-(void)saveDiseaseCommentSuccess:(NSNotification*)noti{
    NSDictionary *dic = [noti object];
    [self setCommentData];
    //************************
    [self._tableView reloadData];
}

-(void)saveDiseaseCommentFail:(NSNotification*)noti{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.headNavView.titleLabel.text = @"详情";
    self.view.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    
    [self addLeftReturnBtn];
    [self.leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    
    [self addRigthBtn];
//    [self.rigthBtn setTitle:@"保存" forState:UIControlStateNormal];
//    [self.rigthBtn addTarget:self action:@selector(addData) forControlEvents:UIControlEventTouchUpInside];
    
    [self setTableMainView];
    // Do any additional setup after loading the view.
}

-(void)saveStoryCommentSuccess:(NSNotification*)noti{
    
}

-(void)saveStoryCommentFail:(NSNotification*)noti{
    
}

-(void)setTableMainView{
    self._tableView = [[UITableView alloc]init];
    self._tableView.backgroundColor = [UIColor colorWithHexString:@"f1f1f1"];
    [self._tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    self._tableView.frame = CGRectMake(0, [self getNavHight], ScreenWidth, (iPhone5?568:480) - [self getNavHight]);
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    [self._tableView setContentSize:CGSizeMake(ScreenWidth, 568 - 198 + 95)];
    [self.view addSubview:self._tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier;
    cellIdentifier = @"MainCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[firstXiangQingTableViewCell2 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone]; 
    firstXiangQingTableViewCell2 *qCell = (firstXiangQingTableViewCell2*)cell;
    qCell.backgroundColor = [UIColor colorWithHexString:@"f9f9f9"];
    qCell.delegate2 = self;
    qCell.numberIndexRow = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    qCell.canShowBigPhoto = YES;
    [qCell resetViewView:self.xiangQingDic];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    firstXiangQingTableViewCell2 *qCell=  [[firstXiangQingTableViewCell2 alloc]init];
    float f = [qCell getCellHeight:self.xiangQingDic];
    return f;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - btnClick
-(void)saveBtnClick{
    
}

-(void)setCommentData{
    dispatch_async(dispatch_get_main_queue(), ^{
        NSMutableDictionary *dcit = [[NSMutableDictionary alloc]initWithDictionary:self.xiangQingDic];
        NSArray *comARR = [dcit objectForKey:@"commentList"];
        if ([comARR isKindOfClass:[NSMutableArray class]]) {
            NSMutableArray *commintArr = [[NSMutableArray alloc]initWithArray:comARR];
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:self.currentMessage forKey:@"commentDesc"];
            [dict setObject:@"我"forKey:@"creatorName"];
            [commintArr addObject:dict];
            [dcit setObject:commintArr forKey:@"commentList"];
            self.xiangQingDic = dcit;
        }
        else{
            NSMutableArray *commintArr = [NSMutableArray array];
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:self.currentMessage forKey:@"commentDesc"];
            [dict setObject:@"我" forKey:@"creatorName"];
            [commintArr addObject:dict];
            [self.xiangQingDic setObject:commintArr forKey:@"commentList"];
        }
        //************************
        [self._tableView reloadData];
    });
}

#pragma mark - BinLiXiangQingCellDelegate
-(void)pingLunBtnClickWithNumberIndexRow:(NSString *)numberIndexRow{
    self.currentIndexrow = numberIndexRow;
    [self showKeyboard];
}

-(void)yinPinBtnClickWithNumberIndexRow:(NSString *)numberIndexRow{
    AvaPlayer *player = [AvaPlayer sharedManager];
    [player playWithUrl:[DictionaryStringTool stringFromDictionary:self.xiangQingDic forKey:@"voiceUrl"]];
}

-(void)deleteBtnClickWithNumberIndexRow:(NSString *)numberIndexRow{
    dongtaiNetWork *dongT = [[dongtaiNetWork alloc]init];
    [dongT delStoryWithStoryId:[DictionaryStringTool stringFromDictionary:self.xiangQingDic forKey:@"storyId"]];
}

#pragma mark - sendMessageDelegate
-(void)postMessage:(NSString *)message{
    self.currentMessage = message;
    [self setCommentData];
    message = [emojiStringChange emojiStringChange2:message];
    dongtaiNetWork *dongT = [[dongtaiNetWork alloc]init];
    message = [emojiStringChange emojiStringChange2:message];
    [dongT saveStoryCommentWithStoryId:[DictionaryStringTool stringFromDictionary:self.xiangQingDic forKey:@"storyId"] commentDesc:message voiceUrl:@""];
}

-(void)photoBtnClickWithNumberIndexRow:(NSString *)numberIndexRow andTag:(int)tag{
    showBigPhotoViewController *sVC = [[showBigPhotoViewController alloc]initWithPhotoA:[DictionaryStringTool stringFromDictionary:self.xiangQingDic forKey:@"imageList"] andTab:tag isLocationPhoto:NO isClassShow:NO];
    [self.navigationController pushViewController:sVC animated:YES];
}

-(void)removeFormParent{
    InputToolbarView = nil;
    [InputToolbarView removeFromParentViewController];
}

//键盘栏目弹出
#pragma mark - keyboard
-(void)showKeyboard{
    // NSLog(@"%@",InputToolbarView);
    if (InputToolbarView == nil) {
        InputToolbarView = [[UIInputToolbarViewController2 alloc]init];
        InputToolbarView.changeBarShowY = 573;
        [self addChildViewController:InputToolbarView];
        
        //InputToolbarView.mineNewComment = self.mineNewComment;
        InputToolbarView.delegate2 = self;
        InputToolbarView.delegate3 = self;
        InputToolbarView.view.frame = CGRectMake(0, (iPhone5?568:480), 320, kDefaultToolbarHeight);
        [InputToolbarView.view setBackgroundColor:[UIColor clearColor]];
        [self.view addSubview:InputToolbarView.view];
        //付值放在addsubview后面
        //NSLog(@"%@",self.mineNewComment);
        //        if (self.mineNewComment == nil) {
        //            self.InputToolbarView.inputToolbar.textView.placeholder = @"发表评论";
        //        }else{
        //            self.InputToolbarView.inputToolbar.textView.placeholder = [NSString stringWithFormat:@"回复：",self.mineNewComment];
        //        }
    }
}
@end
