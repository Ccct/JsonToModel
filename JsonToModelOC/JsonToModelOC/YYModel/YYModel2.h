//
//  YYModel2.h
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YYCityModel : NSObject

@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *age;
@property (copy, nonatomic) NSString *city;

@end

@interface YYModel2 : NSObject

@property (copy, nonatomic) NSString *state;
@property (copy, nonatomic) NSString *page;
@property (strong, nonatomic) NSArray<YYCityModel *> *datas;


@end

NS_ASSUME_NONNULL_END
