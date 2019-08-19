//
//  DynamicCOperation.m
//  DynamicC
//
//  Created by net263 on 2019/8/19.
//  Copyright © 2019 net263. All rights reserved.
//

#import "DynamicCOperation.h"
int globalValueC = 1000;
@implementation DynamicCOperation
-(void)printGlobalValueC
{
    NSLog(@"DynamicCOperation globalValueC=%d", globalValueC);
}
@end
