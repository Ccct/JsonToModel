//
//  MJModel3.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "MJModel3.h"

@implementation MJCityModel

@end

@implementation MJModel3

//模型中某字段 -> 数据中的某个字段（用于字段名与字典中的key不相同）
+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{@"SSSS":@"state"};
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"datas:%@,%@,%@",_SSSS,_page,_citys];
}

@end
