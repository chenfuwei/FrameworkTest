//
//  StaticLibA.m
//  StaticLibA
//
//  Created by net263 on 2019/8/19.
//  Copyright © 2019 net263. All rights reserved.
//

#import "StaticLibA.h"
int globalValue = 100;
@implementation StaticLibA
- (void)printStaticLibA
{
    NSLog(@"prprintStaticLibA globalValue = %d", globalValue);
}
@end
