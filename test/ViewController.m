//
//  ViewController.m
//  test
//
//  Created by zhulin on 2018/5/8.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "ViewController.h"
#import "TTUserProfile.h"

@interface ViewController () <TTUserProfileDelegate>
@property (nonatomic) TTUserProfile * user;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // GCD testing
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_apply(10, queue, ^(size_t index) {
        NSLog(@"%zu", index);
    });
    NSLog(@"done");
    
    //block testing
//    __block int val = 0;
//    void (^blk)(void) = [^{++val;NSLog(@"bbb%d",val);} copy];
//    ++val;
//    val = 5;
//    blk();
    
    //NSLog(@"block%d", val);
    
//    __block int val = 0;
//    void (^blk)(void) = ^{++val;};
//    ++val;
//    blk();
//    NSLog(@"%d", val);
    // Array in block testing
    typedef void (^blk_t) (id);
    blk_t blk;
    {
        id array = [[NSMutableArray alloc] init];
        blk = ^(id obj) {
        [array addObject:obj];
        NSLog(@"array count = %ld", [array count]);
            
        };
    }
    blk([[NSObject alloc] init]);
    blk([[NSObject alloc] init]);
    blk([[NSObject alloc] init]);
    
    typedef void (^block_t) (int);
    
    block_t blk1 = ^(int a ){
        NSLog(@"%daaaaa",a);
    };
    blk1(5);
    
    self.user = [[TTUserProfile alloc] init];
    
    self.user = [self.user initWithName:@"zl" gender:@"male"];
    
    [self showUserProfile];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];    
    // Dispose of any resources that can be recreated.
}
- (void) showUserProfile
{
    NSLog(@"name:%@, gender:%@", [self.user name],self.user.gender);
}

@end
