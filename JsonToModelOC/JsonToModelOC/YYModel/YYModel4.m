//
//  YYModel4.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "YYModel4.h"

@implementation YYPeopleModel

@end

@implementation YYDatasModel

@end

@implementation YYModel4

// 指明：字段xx 是 xxx 类型
+ (NSDictionary *)modelContainerPropertyGenericClass {
    
    // value使用[xxxxxxx class] 或 xxxxxx.class 或 @"xxxxxx" 没有区别
    return @{@"datas" : [YYDatasModel class]};
}

@end
