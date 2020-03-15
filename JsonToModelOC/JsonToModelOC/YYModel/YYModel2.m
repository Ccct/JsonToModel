//
//  YYModel2.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "YYModel2.h"

@implementation YYCityModel

@end

@implementation YYModel2

// 指明：字段citys 是 YYCityModel 类型
+ (NSDictionary *)modelContainerPropertyGenericClass {
    
    // value使用[YYCityModel class] 或 YYCityModel.class 或 @"YYCityModel" 没有区别
    return @{@"datas" : [YYCityModel class]};
}

@end
