//
//  DynamicAOperation.m
//  DynamicA
//
//  Created by net263 on 2019/8/19.
//  Copyright © 2019 net263. All rights reserved.
//

#import "DynamicAOperation.h"
#import <StaticLibA/StaticLibA.h>
#import <DynamicC/DynamicC.h>
@interface DynamicAOperation()
@property(nonatomic, strong)StaticLibA *staticLibA;
@property(nonatomic, strong)DynamicCOperation *dynamicCOperation;
@end
@implementation DynamicAOperation

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.staticLibA = [[StaticLibA alloc] init];
        [self.staticLibA printStaticLibA];
        self.dynamicCOperation = [[DynamicCOperation alloc] init];
        [self.dynamicCOperation printGlobalValueC];
    }
    return self;
}
-(void)operationStaticAdd
{
    globalValue ++;
    [self.staticLibA printStaticLibA];
}
-(void)operationDynamicAdd
{
    globalValueC ++;
    [self.dynamicCOperation printGlobalValueC];
}
@end
