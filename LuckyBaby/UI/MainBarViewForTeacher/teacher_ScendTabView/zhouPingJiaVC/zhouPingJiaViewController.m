//
//  zhouPingJiaViewController.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-26.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "zhouPingJiaViewController.h"
#import "TeacherNetWork.h"
#import "KGSelectDateView.h"
#import "PICircularProgressView.h"
#import "SHView2.h"
#import "KGSeclectedView2.h"
#import "zhouGeRenViewController.h"
@interface zhouPingJiaViewController ()<KGSelectDateViewDelegate,PullTableViewDelegate,UITableViewDataSource,UITableViewDelegate,KGSelectView2Delegate>
@property(nonatomic,strong)PullTableView *_tableView;
@property(nonatomic,strong)KGSelectDateView *timeImageView;
@property(nonatomic,strong)NSString *getDataTime;
@property(nonatomic,assign)int currentWeak;
@property(nonatomic,strong)NSMutableArray *jibingListArray;
@end

@implementation zhouPingJiaViewController

-(void)viewWillAppear:(BOOL)animated{
    [self getData];
    self.navigationController.navigationBar.hidden = YES;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(listClassChildSuccess:) name:@"listClassChildSuccess" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(listClassChildFail:) name:@"listClassChildFail" object:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

#pragma mark -logic data
-(void)getData{
    self.jibingListArray = [NSMutableArray array];
    NSDictionary *dic = [plistDataManager getDataWithKey:teacher_loginList];
    TeacherNetWork *tNet = [[TeacherNetWork alloc]init];
    [tNet listClassChildWithPlatformId:[DictionaryStringTool stringFromDictionary:dic forKey:@"platformId"] semesterId:[DictionaryStringTool stringFromDictionary:dic forKey:@"semesterId"] classId:[DictionaryStringTool stringFromDictionary:dic forKey:@"classId"] scoreType:@"W" weekIndex:@"" monthName:[NSString stringWithFormat:@"%d",self.currentWeak]];
}

-(void)listClassChildSuccess:(NSNotification*)noti{
    NSDictionary *dic = [noti object];
    NSArray *arr = [dic objectForKey:@"data"];
    if (arr.count > 0) {
        self.jibingListArray = arr;
    }
    [self._tableView reloadData];
}

-(void)listClassChildFail:(NSNotification*)noti{
    
}

- (void)viewDidLoad {
    NSDictionary *dict = [plistDataManager getDataWithKey:teacher_loginList];
    NSString *time3 = [DictionaryStringTool stringFromDictionary:dict forKey:@"semesterDateStart"];
    if(time3.length >= 3){
        time3 = [TimeChange timeChage:[time3 substringToIndex:time3.length - 3]];
    }
    NSArray *array = [time3 componentsSeparatedByString:@" "];
    time3 = [array objectAtIndex:0];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"YYYY-MM-dd"];
    NSDate *datenow = [formatter dateFromString:time3];
    
    self.currentWeak = [[TimeChange compareCurrentTime:datenow] integerValue];
    self.currentWeak = self.currentWeak/7 + 1;
    
    [super viewDidLoad];
    self.headNavView.titleLabel.text = @"本周表现";
    self.view.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    self.headNavView.backgroundColor = [UIColor colorWithHexString:@"#7FC369"];
    
    [self addLeftReturnBtn];
    [self.leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    [self addRigthBtn];
    [self.rigthBtn setTitle:@"批量评价" forState:UIControlStateNormal];
    [self.rigthBtn addTarget:self action:@selector(pingJiaShow) forControlEvents:UIControlEventTouchUpInside];
    CGRect r = self.rigthBtn.frame;
    r.origin.x -= 40;
    r.size.width += 40;
    self.rigthBtn.frame = r;
    
    [self setMainImageView];
    [self setMainTableView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setMainTableView{
    self._tableView = [[PullTableView alloc]initWithFrame:CGRectMake(0, [self getNavHight] + 60, ScreenWidth, (iPhone5?586:480) - [self getNavHight] - 70) style:UITableViewStylePlain];
    [self._tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    ((PullTableView*)(self._tableView)).pullDelegate = self;
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    //self._tableView.tableHeaderView = self.headerImageView;
    [self.view addSubview:self._tableView];
}

-(void)setMainImageView{
    self.timeImageView = [[KGSelectDateView alloc]initWithDateChanegSize:7];
    self.timeImageView.timelabel.text = [NSString stringWithFormat:@"第%d周",self.currentWeak];
    self.timeImageView.frame = CGRectMake(0, [self getNavHight], 320, 60);
    self.timeImageView.delegate2 = self;
    [self.view addSubview:self.timeImageView];
}

#pragma mark - tableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return self.jibingListArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier;
    cellIdentifier = @"MainCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    for (UIView *view in cell.subviews) {
        if (![view isKindOfClass:[UIScrollView class]]) {
            [view removeFromSuperview];
        }
    }
    
    NSDictionary *dic = [self.jibingListArray objectAtIndex:indexPath.row];
    
    HJHMyLabel *label3 = [[HJHMyLabel alloc]init];
    label3.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"childName"];
    label3.font = [UIFont systemFontOfSize:18];
    label3.frame = CGRectMake(10, 0, 200, 60);
    label3.textColor = [UIColor blackColor];
    [cell addSubview:label3];
    
    HJHMyLabel *label2 = [[HJHMyLabel alloc]init];
    label2.text = @"未评价";
    label2.textAlignment = NSTextAlignmentRight;
    label2.font = [UIFont systemFontOfSize:18];
    label2.frame = CGRectMake(230, 0, 80, 60);
    label2.textColor = [UIColor colorWithHexString:@"F08221"];
    [cell addSubview:label2];
    
    HJHMyImageView *footImage = [[HJHMyImageView alloc]init];
    footImage.frame = CGRectMake(0, 59, 320, 0.5);
    footImage.backgroundColor = [UIColor colorWithHexString:@"C8C7CC"];
    [cell addSubview:footImage];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableArray *array = [NSMutableArray array];
    [array addObject:[self.jibingListArray objectAtIndex:indexPath.row]];
    zhouGeRenViewController *xVC = [[zhouGeRenViewController alloc]initWithMessageArray:array];
    [self.navigationController pushViewController:xVC animated:YES];
}

#pragma mark - btnClick
-(void)pingJiaShow{
    NSMutableArray *array = [NSMutableArray array];
    for (NSDictionary *dic in self.jibingListArray) {
        [array addObject:[DictionaryStringTool stringFromDictionary:dic forKey:@"childName"]];
    }
    KGSeclectedView2 *kSV = [[KGSeclectedView2 alloc]initWithDictionary:array withTitile:@"批量评价" andSelectedTagArray:@[]];
    kSV.delegate2 = self;
    [self.view addSubview:kSV];
}

#pragma mark - KGSelectView2Delegate
-(void)selectBtnClick:(NSArray *)btnArray{
    
}

#pragma mark - pullTableViewDelegate


-(void)pullTableViewDidTriggerLoadMore:(PullTableView *)pullTableView{
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(loadMoreListDataBack) userInfo:nil repeats:NO];
}


-(void)pullTableViewDidTriggerRefresh:(PullTableView *)pullTableView{
    NSLog(@"hello");
    NSLog(@"%@",pullTableView);
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(refreshListDataBack) userInfo:nil repeats:NO];
}

-(void)refreshListDataBack{
    [self pullTableRefresh:(PullTableView*)self._tableView];
}

-(void)loadMoreListDataBack{
    [self pullTableViewLoadMore:(PullTableView*)self._tableView];
}

-(void)changeStyle{
    NSDate* date = [NSDate date];
    ((PullTableView*)self._tableView).pullLastRefreshDate = date;
    ((PullTableView*)self._tableView).pullTableIsRefreshing = NO;
    ((PullTableView*)self._tableView).pullTableIsLoadingMore = NO;
}

-(void)pullTableRefresh:(PullTableView*)pullTableView
{
    NSDate* date = [NSDate date];
    pullTableView.pullLastRefreshDate = date;
    pullTableView.pullTableIsRefreshing = NO;
    pullTableView.loadMoreView.isLoading = NO;
}

-(void)pullTableViewLoadMore:(PullTableView*)pullTableView
{
    NSDate* date = [NSDate date];
    pullTableView.pullLastRefreshDate = date;
    pullTableView.pullTableIsLoadingMore = NO;
    pullTableView.refreshView.isLoading = NO;
}

#pragma mark - KGSelectDateViewDelegate
-(void)changeDateWithStartDate:(NSString *)startDate endDate:(NSString *)endDate isLetfBtnClick:(BOOL)isLetfBtnClick{
    if (isLetfBtnClick == NO) {
        self.currentWeak ++;
        self.timeImageView.timelabel.text = [NSString stringWithFormat:@"第%d周",self.currentWeak];
    }
    else{
        if (self.currentWeak > 1) {
            self.currentWeak --;
            self.timeImageView.timelabel.text = [NSString stringWithFormat:@"第%d周",self.currentWeak];
        }
    }
    [self getData];
}


@end
