//
//  MJModel4.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "MJModel4.h"

@implementation MJPeopleModel

@end

@implementation MJDataModels

@end

@implementation MJModel4

//指明 某字段 ——> 某模型
+(NSDictionary *)mj_objectClassInArray{
    return @{@"datas":@"MJDataModels"};
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"datas:%@,%@,%@,%@",_state,_page,_citys,_datas];
}


@end
