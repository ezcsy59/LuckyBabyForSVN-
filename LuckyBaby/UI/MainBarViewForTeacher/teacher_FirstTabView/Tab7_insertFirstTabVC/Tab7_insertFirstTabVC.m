//
//  Tab7_insertFirstTabVC.m
//  shuoshuo3
//
//  Created by huang on 3/5/14.
//  Copyright (c) 2014 huang. All rights reserved.
//

#import "Tab7_insertFirstTabVC.h"
#import "TeacherNetWork.h"
#import "KGSelectDateView.h"
#define kDefaultToolbarHeight 42
#define kIOS7 0
@interface Tab7_insertFirstTabVC ()<KGSelectDateViewDelegate>
@property(nonatomic,strong)PullTableView *_tableView;
@property(nonatomic,strong)KGSelectDateView *timeImageView;

@property(nonatomic,strong)NSString *currentIndexrow;
@property(nonatomic,strong)NSString *currentMessage;

@property(nonatomic,strong)NSMutableArray *fisrtXiangQingArray;

@property(nonatomic,strong)NSString *getDataTime;

@property(nonatomic,strong)HJHMyImageView *footImageView;

@property(nonatomic,assign)int style;
@end

@implementation Tab7_insertFirstTabVC

-(instancetype)initWithStyle:(int)style{
    if (self = [super init]) {
        self.style = style;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(listChildMedicineDelegateWithGradeSuccess:) name:@"listChildMedicineDelegateWithGradeSuccess" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(listChildMedicineDelegateWithGradeFail:) name:@"listChildMedicineDelegateWithGradeFail" object:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

-(void)getData{
    self.fisrtXiangQingArray = [NSMutableArray array];
    TeacherNetWork *tNet = [[TeacherNetWork alloc]init];
    NSDictionary *dic = [plistDataManager getDataWithKey:teacher_loginList];
    if (self.style != 0) {
        [tNet listChildMedicineDelegateWithGradeWithMsgDate:self.getDataTime classId:@"" platformId:@"1"];
    }
    else{
        [tNet listChildMedicineDelegateWithGradeWithMsgDate:self.getDataTime classId:[DictionaryStringTool stringFromDictionary:dic forKey:@"classId"] platformId:@"0"];
    }
    
}

#pragma mark -logic data
-(void)listChildMedicineDelegateWithGradeSuccess:(NSNotification*)noti{
    NSDictionary *dic = [noti object];
    NSArray *array = [dic objectForKey:@"data"];
    if ([array isKindOfClass:[NSArray class]]) {
        self.fisrtXiangQingArray = [[NSMutableArray alloc]initWithArray:array];
        [self._tableView reloadData];
    }
    //************************
}

-(void)listChildMedicineDelegateWithGradeFail:(NSNotification*)noti{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setMainImageView];
    [self setMainTableView];
    
    NSDate *date = [NSDate date];
    NSString *string = [date description];
    NSArray *array = [string componentsSeparatedByString:@" "];
    self.getDataTime = [NSString stringWithFormat:@"%@000",[TimeChange timeChage2:[array objectAtIndex:0]]];
    [self getData];
    // Do any additional setup after loading the view.
}

-(void)setMainTableView{
    self._tableView = [[PullTableView alloc]initWithFrame:CGRectMake(0, 60, ScreenWidth, 568 - 218) style:UITableViewStylePlain];
    if (!iPhone5) {
        self._tableView.frame = CGRectMake(0, 60, ScreenWidth, 568 - 158 - 88);
    }
    [self._tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    ((PullTableView*)(self._tableView)).pullDelegate = self;
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
//    self._tableView.tableHeaderView = self.timeImageView;
    [self._tableView setContentSize:CGSizeMake(ScreenWidth, 568 - 198 + 95)];
    [self.view addSubview:self._tableView];
}

-(void)setMainImageView{
    self.timeImageView = [[KGSelectDateView alloc]initWithDateChanegSize:1];
    self.timeImageView.delegate2 = self;
    [self._tableView addSubview:self.timeImageView];
    [self.view addSubview:self.timeImageView];
    //    self.timeImageView.frame = CGRectMake(0, 0, ScreenWidth, 198 + 60);
    
    self.footImageView = [[HJHMyImageView alloc]init];
    [self.view addSubview:self.footImageView];
}

#pragma mark - btnClick

#pragma mark - tableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.fisrtXiangQingArray.count;
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
    NSDictionary *dic = [self.fisrtXiangQingArray objectAtIndex:indexPath.row];
    
    HJHMyImageView *leftImage = [[HJHMyImageView alloc]init];
    leftImage.backgroundColor = [UIColor clearColor];
    leftImage.userInteractionEnabled = NO;
    leftImage.frame = CGRectMake(10, 10, 60, 60);
    leftImage.layer.cornerRadius = 30;
    [leftImage setImageWithURL:[NSURL URLWithString:[DictionaryStringTool stringFromDictionary:dic forKey:@"portraitUrl"]] placeholderImage:nil];
    leftImage.layer.borderColor = [UIColor colorWithHexString:@"#7DCAE6"].CGColor;
    leftImage.layer.borderWidth = 2;
    [cell addSubview:leftImage];
    
    HJHMyLabel *label1 = [[HJHMyLabel alloc]init];
    label1.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"childName"];
    label1.font = [UIFont systemFontOfSize:20];
    label1.frame = CGRectMake(80, 10, 200, 20);
    label1.textColor = [UIColor blackColor];
    [cell addSubview:label1];
    
    HJHMyLabel *label2 = [[HJHMyLabel alloc]init];
    label2.text = [NSString stringWithFormat:@"药物:%@", [DictionaryStringTool stringFromDictionary:dic forKey:@"medicineName"]];
    label2.font = [UIFont systemFontOfSize:14];
    label2.frame = CGRectMake(80, 10 + 22, 200, 20);
    label2.textColor = [UIColor colorWithHexString:@"4DD0C8"];
    [cell addSubview:label2];
    
    HJHMyLabel *label5 = [[HJHMyLabel alloc]init];
    label5.text = [NSString stringWithFormat:@"剂量:%@",[DictionaryStringTool stringFromDictionary:dic forKey:@"takeQty"]];
    label5.font = [UIFont systemFontOfSize:14];
    label5.frame = CGRectMake(80, 10 + 22*2, 200, 20);
    label5.textColor = [UIColor colorWithHexString:@"4DD0C8"];
    [cell addSubview:label5];
    
    int heightCount = 0;
    if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime1"]integerValue]>0) {
        HJHMyLabel *label3 = [[HJHMyLabel alloc]init];
        NSString *time = [DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime1"];
        if (time.length >= 3) {
            time = [TimeChange timeChage:[time substringToIndex:(time.length - 3)]];
        }
        NSArray *array = [time componentsSeparatedByString:@" "];
        time = [array objectAtIndex:1];
        array = [time componentsSeparatedByString:@":"];
        time = [NSString stringWithFormat:@"%@:%@",[array objectAtIndex:0],[array objectAtIndex:1]];
        label3.text = [NSString stringWithFormat:@"第一次:%@",time];
        label3.font = [UIFont systemFontOfSize:14];
        label3.frame = CGRectMake(80, 10 + 22*3, 200, 20);
        label3.textColor = [UIColor colorWithHexString:@"4DD0C8"];
        [cell addSubview:label3];
        heightCount ++ ;
    }
    if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime2"]integerValue]>0) {
        HJHMyLabel *label3 = [[HJHMyLabel alloc]init];
        NSString *time = [DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime2"];
        if (time.length >= 3) {
            time = [TimeChange timeChage:[time substringToIndex:(time.length - 3)]];
        }
        NSArray *array = [time componentsSeparatedByString:@" "];
        time = [array objectAtIndex:1];
        array = [time componentsSeparatedByString:@":"];
        time = [NSString stringWithFormat:@"%@:%@",[array objectAtIndex:0],[array objectAtIndex:1]];
        label3.text = [NSString stringWithFormat:@"第二次:%@",time];
        label3.font = [UIFont systemFontOfSize:14];
        label3.frame = CGRectMake(80, 10 + 22*(3 + heightCount), 200, 20);
        label3.textColor = [UIColor colorWithHexString:@"4DD0C8"];
        [cell addSubview:label3];
        heightCount ++ ;
    }
    if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime3"]integerValue]>0) {
        HJHMyLabel *label3 = [[HJHMyLabel alloc]init];
        NSString *time = [DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime3"];
        if (time.length >= 3) {
            time = [TimeChange timeChage:[time substringToIndex:(time.length - 3)]];
        }
        NSArray *array = [time componentsSeparatedByString:@" "];
        time = [array objectAtIndex:1];
        array = [time componentsSeparatedByString:@":"];
        time = [NSString stringWithFormat:@"%@:%@",[array objectAtIndex:0],[array objectAtIndex:1]];
        label3.text = [NSString stringWithFormat:@"第三次:%@",time];
        label3.font = [UIFont systemFontOfSize:14];
        label3.frame = CGRectMake(80, 10 + 22*(3 + heightCount), 200, 20);
        label3.textColor = [UIColor colorWithHexString:@"4DD0C8"];
        [cell addSubview:label3];
        heightCount ++ ;
    }
    
    HJHMyLabel *label4 = [[HJHMyLabel alloc]init];
    label4.text = [NSString stringWithFormat:@"%@",[DictionaryStringTool stringFromDictionary:dic forKey:@"takeDesc"]];
    label4.font = [UIFont systemFontOfSize:14];
    label4.frame = CGRectMake(80, 10 + 22*(3 + heightCount), 100, 20);
    label4.textColor = [UIColor colorWithHexString:@"666666"];
    [cell addSubview:label4];
    
    HJHMyLabel *label6 = [[HJHMyLabel alloc]init];
    label6.text = [NSString stringWithFormat:@"%@",[DictionaryStringTool stringFromDictionary:dic forKey:@"className"]];
    label6.font = [UIFont systemFontOfSize:16];
    label6.frame = CGRectMake(250, 10, 80, 20);
    label6.textColor = [UIColor colorWithHexString:@"F08221"];
    [cell addSubview:label6];
    
    HJHMyImageView *footImage = [[HJHMyImageView alloc]init];
    footImage.frame = CGRectMake(0, 36 + 22*(3 + heightCount), 320, 0.5);
    footImage.backgroundColor = [UIColor colorWithHexString:@"C8C7CC"];
    [cell addSubview:footImage];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    int heightCount = 0;
    NSDictionary *dic = [self.fisrtXiangQingArray objectAtIndex:indexPath.row];
    if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime1"]integerValue]>0) {
        heightCount ++ ;
    }
    if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime2"]integerValue]>0) {
        heightCount ++ ;
    }

    if ([[DictionaryStringTool stringFromDictionary:dic forKey:@"alertTime3"]integerValue]>0) {
        heightCount ++ ;
    }

    return 37 + 22*(3 + heightCount);
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
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
-(void)changeDateWithStartDate:(NSString *)startDate endDate:(NSString *)endDate{
    self.getDataTime = [NSString stringWithFormat:@"%@000",[TimeChange timeChage2:endDate]];
    [self getData];
}
@end
