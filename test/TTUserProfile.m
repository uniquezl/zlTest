//
//  TTUserProfile.m
//  test
//
//  Created by zhulin on 2018/5/18.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "TTUserProfile.h"
@interface TTUserProfile ()
@end

@implementation TTUserProfile

- (id) initWithName:(NSString *)uName gender:(NSString *)uGender
{
    if (self = [super init])
    {
        self.name = uName;
        self.gender = uGender;
    }
    return self;
}


@end
