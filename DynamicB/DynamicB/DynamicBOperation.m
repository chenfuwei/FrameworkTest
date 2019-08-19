//
//  DynamicBOperation.m
//  DynamicB
//
//  Created by net263 on 2019/8/19.
//  Copyright © 2019 net263. All rights reserved.
//

#import "DynamicBOperation.h"
#import <StaticLibA/StaticLibA.h>
@interface DynamicBOperation()
@property(nonatomic, strong)StaticLibA *staticLibA;
@end
@implementation DynamicBOperation
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.staticLibA = [[StaticLibA alloc] init];
        [self.staticLibA printStaticLibA];
    }
    return self;
}
-(void)operationAdd
{
    globalValue ++;
    [self.staticLibA printStaticLibA];
}
@end
