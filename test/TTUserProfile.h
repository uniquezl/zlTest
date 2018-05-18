//
//  TTUserProfile.h
//  test
//
//  Created by zhulin on 2018/5/18.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TTUserProfileDelegate <NSObject>

- (void) showUserProfile;

@end


@interface TTUserProfile : NSObject

@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * gender;
@property (nonatomic, weak) id<TTUserProfileDelegate> delegate;

-(id)initWithName:(NSString *)uName gender:(NSString *)uGender;
@end
