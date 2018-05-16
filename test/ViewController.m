//
//  ViewController.m
//  test
//
//  Created by zhulin on 2018/5/8.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    

    //dispatch_release(zlQueue);
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_group_async(group, queue, ^{NSLog(@"blk0");});
//    dispatch_group_async(group, queue, ^{NSLog(@"blk1");});
//    dispatch_group_async(group, queue, ^{NSLog(@"blk2");});
//    dispatch_group_notify(group, dispatch_get_main_queue(), ^{NSLog(@"done");});
//
//    dispatch_queue_t zlQueue = dispatch_queue_create("com.zl.tantan", DISPATCH_QUEUE_CONCURRENT);
//
//    dispatch_async(zlQueue, ^{NSLog(@"zlzlzzl");});
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_apply(10, queue, ^(size_t index) { NSLog(@"%zu", index);
    }); NSLog(@"done");
    
    __block int val = 0;
    void (^blk)(void) = [^{++val;NSLog(@"bbb%d",val);} copy];++val;
    val = 5;
    blk();
    
    NSLog(@"block%d", val);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
