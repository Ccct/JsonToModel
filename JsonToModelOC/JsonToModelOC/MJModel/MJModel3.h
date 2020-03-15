//
//  MJModel3.h
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJCityModel : NSObject

@property (copy, nonatomic) NSString *cityName;
@property (copy, nonatomic) NSString *cityCode;
@property (copy, nonatomic) NSString *cityImg;

@end

@interface MJModel3 : NSObject

@property (copy, nonatomic) NSString *SSSS;
@property (copy, nonatomic) NSString *page;
@property (strong, nonatomic) MJCityModel *citys;

@end

NS_ASSUME_NONNULL_END
