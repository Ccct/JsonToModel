//
//  MJModel2.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "MJModel2.h"

@implementation MJModel2Datas

@end

@implementation MJModel2

//指明 某字段 ——> 某模型
+(NSDictionary *)mj_objectClassInArray{
    return @{@"datas":@"MJModel2Datas"};
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"datas:%@,%@,%@",_state,_page,_datas];
}

@end
