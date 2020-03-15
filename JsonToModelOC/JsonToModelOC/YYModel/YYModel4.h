//
//  YYModel4.h
//  JsonToModelOC
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class YYCityModels;

@interface YYPeopleModel : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *sex;

@end

@interface YYDatasModel : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *age;
@property (copy, nonatomic) NSString *city;
@property (nonatomic,strong) YYPeopleModel *peoples;

@end

@interface YYModel4 : NSObject

@property (copy, nonatomic) NSString *state;
@property (copy, nonatomic) NSString *page;
@property (nonatomic,strong) YYCityModels *citys;
@property (nonatomic,strong) NSArray *datas;

@end

NS_ASSUME_NONNULL_END
