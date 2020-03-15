//
//  MJModel4.h
//  JsonToModelOC
//
//  Created by Helios on 2020/3/15.
//  Copyright © 2020 Helios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class MJCityModel;

@interface MJPeopleModel : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *sex;

@end

@interface MJDataModels : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *age;
@property (copy, nonatomic) NSString *city;
@property (strong, nonatomic) MJPeopleModel *peoples;

@end

@interface MJModel4 : NSObject

@property (copy, nonatomic) NSString *state;
@property (copy, nonatomic) NSString *page;
@property (strong, nonatomic) MJCityModel *citys;
@property (strong, nonatomic) NSArray *datas;

@end

NS_ASSUME_NONNULL_END
