//
//  plistDataManager.m
//  LuckyBaby
//
//  Created by 黄嘉宏 on 15-4-1.
//  Copyright (c) 2015年 黄嘉宏. All rights reserved.
//

#import "plistDataManager.h"

@implementation plistDataManager
+(void)writeData:(NSDictionary*)dic withKey:(NSString*)key{
    /* 数据请求成功*/
    NSArray *patharray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *path =  [patharray objectAtIndex:0];
    
    NSString *filepath=[path stringByAppendingPathComponent:key];//添加我们需要的文件全称
    
    if ([[dic objectForKey:@"data"] isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dictO = [NSDictionary dictionaryWithDictionary:[dic objectForKey:@"data"]];
        
        NSDictionary *dict = [DictionaryStringTool changeDictionaryTyle:dictO];
        
        [dict writeToFile:filepath atomically:YES];
        
        //那怎么证明我的数据写入了呢？读出来看看
        NSMutableDictionary *data1 = [[NSMutableDictionary alloc] initWithContentsOfFile:filepath];
        
        NSLog(@"%@",data1);
    }
}

+(NSDictionary *)getDataWithKey:(NSString*)key{
    /* 数据请求成功*/
    NSArray *patharray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *path =  [patharray objectAtIndex:0];
    
    NSString *filepath=[path stringByAppendingPathComponent:key];//添加我们需要的文件全称
    
    //那怎么证明我的数据写入了呢？读出来看看
    NSMutableDictionary *data1 = [[NSMutableDictionary alloc] initWithContentsOfFile:filepath];
    
    return data1;
}

@end
