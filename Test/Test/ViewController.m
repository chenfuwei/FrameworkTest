//
//  ViewController.m
//  Test
//
//  Created by net263 on 2019/8/19.
//  Copyright © 2019 net263. All rights reserved.
//

#import "ViewController.h"
#import <StaticLibA/StaticLibA.h>
#import <DynamicA/DynamicA.h>
#import <DynamicB/DynamicB.h>

@interface ViewController ()
@property(nonatomic,strong)StaticLibA *staticLibA;
@property(nonatomic,strong)DynamicAOperation *dynamicAOperation;
@property(nonatomic,strong)DynamicBOperation *dynamicBoperation;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.staticLibA = [[StaticLibA alloc] init];
    self.dynamicAOperation = [[DynamicAOperation alloc] init];
    self.dynamicBoperation = [[DynamicBOperation alloc] init];
    [self testThreeSeprate];
}

//dynamicA与dynamicB，staticA独立
-(void)testThreeSeprate
{
    [self.staticLibA printStaticLibA];
    [self.dynamicAOperation operationAdd];
    [self.staticLibA printStaticLibA];
    [self.dynamicBoperation operationAdd];
    [self.staticLibA printStaticLibA];
}

@end
