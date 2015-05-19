//
//  keAddQinViewController.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-4.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "keAddQinViewController.h"
#import "dongtaiNetWork.h"
#import "canAddQinTableViewCell.h"
#import "yaoqingQingViewController.h"

@interface keAddQinViewController ()<UIScrollViewDelegate,UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *_tableView;
@property(nonatomic,strong)NSArray *followQinListArray;
@property(nonatomic,strong)NSArray *unfollowQinListArray;
@end

@implementation keAddQinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.headNavView.titleLabel.text = @"可添加的亲";
    self.view.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    
    [self addLeftReturnBtn];
    [self.leftBtn setTitle:@"返回" forState:UIControlStateNormal];
    [self setMainTableView];
    //    [self setMainTableView];
    // Do any additional setup after loading the view.
}

-(void)setMainTableView{
    self._tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, [self getNavHight], ScreenWidth, (iPhone5?568:480) - [self getNavHight]) style:UITableViewStylePlain];
    [self._tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    self._tableView.backgroundColor = [UIColor colorWithHexString:@"f1f1f1"];
    self._tableView.delegate = self;
    self._tableView.dataSource = self;
    [self._tableView setContentSize:CGSizeMake(ScreenWidth, 568 - 198 + 95)];
    [self.view addSubview:self._tableView];
}

-(void)viewWillAppear:(BOOL)animated{
    [self getData];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(getQinListSuccess:) name:@"getQinListSuccess" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(getQinListFail:) name:@"getQinListFail" object:nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

#pragma mark -logic data
-(void)getData{
    NSDictionary *dic = [plistDataManager getDataWithKey:@"user_loginList.plist"];
    self.followQinListArray = [NSArray array];
    self.unfollowQinListArray = [NSArray array];
    dongtaiNetWork *dongtaiNetWork1 = [[dongtaiNetWork alloc]init];
    [dongtaiNetWork1 getQinListWithRelativesId:[DictionaryStringTool stringFromDictionary:dic forKey:@"relativesId"] childIdFamily:[DictionaryStringTool stringFromDictionary:dic forKey:@"childIdFamilyCurrent"]];
}

-(void)getQinListSuccess:(NSNotification*)noti{
    NSDictionary *dic = [noti object];
    NSDictionary *dict = [dic objectForKey:@"data"];
    NSArray *array = [dict objectForKey:@"followList"];
    NSArray *uArray = [dict objectForKey:@"unFollowList"];
    if (array.count > 0) {
        self.followQinListArray = array;
    }
    if (uArray.count > 0) {
        self.unfollowQinListArray = uArray;
    }
    [self._tableView reloadData];
}

-(void)getQinListFail:(NSNotification*)noti{
    
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
    // Return the number of rows in the section.
    return self.unfollowQinListArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier;
    cellIdentifier = @"MainCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[canAddQinTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone]; 
    canAddQinTableViewCell *qCell = (canAddQinTableViewCell*)cell;
    NSDictionary *dic = [self.unfollowQinListArray objectAtIndex:indexPath.row];
    qCell.leftLabel1.text = [DictionaryStringTool stringFromDictionary:dic forKey:@"relationsName"];
    qCell.leftLabel2.text = @"邀请加入";
    [qCell.leftImage setImageWithURL:[NSURL URLWithString:[DictionaryStringTool stringFromDictionary:dic forKey:@"portraitUrl"]] placeholderImage:nil];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    yaoqingQingViewController *yVC = [[yaoqingQingViewController alloc]init];
    [self.navigationController pushViewController:yVC animated:YES];
}

@end
