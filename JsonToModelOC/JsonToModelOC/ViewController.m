//
//  ViewController.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "ViewController.h"

#import "MJExtension.h"
#import <NSObject+YYModel.h>

#import "JsonModel.h"
#import "MJModel2.h"
#import "MJModel3.h"
#import "MJModel4.h"

#import "YYModel2.h"
#import "YYModel3.h"
#import "YYModel4.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //一、 MJExtension
//    [self MJSimpleModel];
//    [self MJSimpleArrModel];
//    [self MJComplexArrModel];
//    [self MJComplexArrModel];
    
    //二、YYModel
//    [self YYSimpleModel];
//    [self YYSimpleArrModel];
//    [self YYComplexArrModel];
    [self YYComplexArrModel];
}

// MARK: MJExtension

/// 1、MJ解析简单模型
- (void)MJSimpleModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson1"];
    
    JsonModel *jsonModel1 = [JsonModel mj_objectWithKeyValues:jsonDic];
    NSLog(@"%@",jsonModel1.description);
}

/// 2、MJ解析 模型嵌套数组字典
- (void)MJSimpleArrModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson2"];
    
    MJModel2 *jsonModel2 = [MJModel2 mj_objectWithKeyValues:jsonDic];
    NSLog(@"%@",jsonModel2.description);
}

/// 3、MJ解析 模型嵌套模型
- (void)MJNestModelArrModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson3"];
    
    MJModel3 *jsonModel3 = [MJModel3 mj_objectWithKeyValues:jsonDic];
    NSLog(@"%@",jsonModel3.description);
}

/// 4、MJ解析 模型嵌套模型
- (void)MJComplexArrModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson4"];
    
    MJModel4 *jsonModel4 = [MJModel4 mj_objectWithKeyValues:jsonDic];
    NSLog(@"%@",jsonModel4.description);
}

// MARK: YYModel

/// 1、YY解析简单模型
- (void)YYSimpleModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson1"];
    JsonModel *model = [JsonModel yy_modelWithJSON:jsonDic];
    NSLog(@"%@",model.description);
}

/// 2、YY解析 模型嵌套数组
- (void)YYSimpleArrModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson2"];
    YYModel2 *model = [YYModel2 yy_modelWithJSON:jsonDic];
    NSLog(@"%@",model.description);
}

/// 3、YY解析 模型嵌套模型
- (void)YYNestModelArrModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson3"];
    YYModel3 *model = [YYModel3 yy_modelWithJSON:jsonDic];
    NSLog(@"%@",model.description);
}

/// 4、YY解析 复杂模型
- (void)YYComplexArrModel{
    
    NSDictionary *jsonDic = [self readJsonFileWithName:@"testJson4"];
    YYModel4 *model = [YYModel4 yy_modelWithJSON:jsonDic];
    NSLog(@"%@",model.description);
}

// MARK: 读取本地json文件
- (NSDictionary *)readJsonFileWithName:(NSString *)name{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:@"json"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
