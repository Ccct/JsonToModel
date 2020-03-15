//
//  JsonModel.h
//  JsonToModelOC
//
//  Created by Helios on 2020/3/14.
//  Copyright © 2020 Helios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JsonModel : NSObject

@property (copy, nonatomic) NSString *state;
@property (copy, nonatomic) NSString *page;
@property (copy, nonatomic) NSString *age;
@property (copy, nonatomic) NSString *head;
@property (copy, nonatomic) NSString *name;

@end

NS_ASSUME_NONNULL_END
