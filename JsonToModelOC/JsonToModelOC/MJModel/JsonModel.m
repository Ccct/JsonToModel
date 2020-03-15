//
//  JsonModel.m
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import "JsonModel.h"

@implementation JsonModel

- (NSString *)description
{
    return [NSString stringWithFormat:@"data:%@,%@,%@,%@,%@", _state,_page,_age,_head,_name];
}

@end
