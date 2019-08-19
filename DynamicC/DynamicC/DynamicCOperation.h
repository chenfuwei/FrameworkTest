//
//  DynamicCOperation.h
//  DynamicC
//
//  Created by net263 on 2019/8/19.
//  Copyright © 2019 net263. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
extern int globalValueC;
@interface DynamicCOperation : NSObject
-(void)printGlobalValueC;
@end

NS_ASSUME_NONNULL_END
