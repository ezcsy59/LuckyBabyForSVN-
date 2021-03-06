//
//  jianKangNetWork.h
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-3.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface jianKangNetWork : NSObject
//健康知识列表
-(void)getJianKangListWithPageSize:(NSString*)pageSize page:(NSString*)page;
//查询健康档案列表
-(void)listHealthPlatformIndexWithChildIdFamily:(NSString*)childIdFamily pageSize:(NSString*)pageSize page:(NSString*)page;
//列表查询疫苗接种数据
-(void)listVaccinumWithChildIdFamily:(NSString*)childIdFamily;
//查询疫苗档案描述
-(void)getVaccinumDescWithVacDocId:(NSString*)vacDocId;
//修改疫苗接种
-(void)saveVaccinumWithVacDocId:(NSString*)vacDocId vacDate:(NSString*)vacDate isDone:(NSString*)isDone relativesId:(NSString*)relativesId;
//查看体重
-(void)listWeightRefWithGender:(NSString*)gender;
//查看身高
-(void)listHeightRefWithGender:(NSString*)gender;
//添加后保存健康指标
-(void)saveHealthInfoWithChildId:(NSString*)childId weight:(NSString*)weight height:(NSString *)height sightLeft:(NSString *)sightLeft sightRight:(NSString*)sightRight teethTotal:(NSString*)teethTotal teethDisease:(NSString*)teethDisease createdBy:(NSString*)createdBy createdDate:(NSString*)createdDate updatedBy:(NSString*)updatedBy updatedDate:(NSString*)updatedDate seflItemValue1:(NSString*)seflItemValue1 seflItemValue2:(NSString*)seflItemValue2 seflItemValue3:(NSString*)seflItemValue3 seflItemValue4:(NSString*)seflItemValue4 seflItemValue5:(NSString*)seflItemValue5 seflItemValue6:(NSString*)seflItemValue6;
//查询健康档案明细
-(void)getHealthPlatformWithHealthId:(NSString*)healthId;
//查询健康指标列表
-(void)listHealthInfoWithChildIdFamily:(NSString*)childIdFamily page:(NSString*)page pageSize:(NSString*)pageSize;
//删除健康指标
-(void)delHealthInfoWithHealthId:(NSString*)healthId;
//设置健康指标自定义指标的标题
-(void)updHealthInfoSelfNameWithSelfItemName:(NSArray*)selfItemNames childIdFamily:(NSString*)childIdFamily;
//查询病历列表
-(void)getDiseaseListWithChildIdFamily:(NSString*)childIdFamily page:(NSString*)page pageSize:(NSString*)pageSize;
//列表查询过敏史分类汇总
-(void)listDiseaseAllergySumWithChildIdFamily:(NSString*)childIdFamily;
//列表查询疾病史分类汇总
-(void)listDiseaseSumWithChildIdFamily:(NSString*)childIdFamily;
//评论病历
-(void)saveDiseaseCommentWithDiseaseId:(NSString*)diseaseId commentDesc:(NSString*)commentDesc;
//新增病历详情
-(void)saveDiseaseWithChildIdFamily:(NSString*)childIdFamily diseaseType:(NSString*)diseaseType diseaseDesc:(NSString*)diseaseDesc voiceUrl:(NSString*)voiceUrl videoUrl:(NSString*)videoUrl imageList:(NSArray*)imageList;
//新建或修改健康档案
-(void)saveHealthPlatformWithHealthId:(NSString*)healthId childIdFamily:(NSString*)childIdFamily historyDisease:(NSString*)historyDisease weight:(NSString*)weight weightComment:(NSString*)weightComment height:(NSString*)height heightComment:(NSString*)heightComment skin:(NSString*)skin eyesLeft:(NSString*)eyesLeft eyesRight:(NSString*)eyesRight sightLeft:(NSString*)sightLeft sightRight:(NSString*)sightRight sightComment:(NSString*)sightComment earLeft:(NSString*)earLeft earRight:(NSString*)earRight earComment:(NSString*)earComment teethTotal:(NSString*)teethTotal teethDisease:(NSString*)teethDisease head:(NSString*)head breast:(NSString*)breast backboneLimbs:(NSString*)backboneLimbs throat:(NSString*)throat heartLung:(NSString*)heartLung liverSpleen:(NSString*)liverSpleen externalGenitals:(NSString*)externalGenitals bodyOthers:(NSString*)bodyOthers hb:(NSString*)hb auxOthers:(NSString*)auxOthers alt:(NSString*)alt resultDesc:(NSString*)resultDesc doctorComment:(NSString*)doctorComment doctorName:(NSString*)doctorName diagnoseBy:(NSString*)diagnoseBy diagnoseDate:(NSString*)diagnoseDate;
@end
