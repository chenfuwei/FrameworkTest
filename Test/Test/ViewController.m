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
#import <DynamicC/DynamicC.h>

@interface ViewController ()
@property(nonatomic,strong)StaticLibA *staticLibA;
@property(nonatomic,strong)DynamicAOperation *dynamicAOperation;
@property(nonatomic,strong)DynamicBOperation *dynamicBoperation;
@property(nonatomic,strong)DynamicCOperation *dynamicCOperation;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.staticLibA = [[StaticLibA alloc] init];
    self.dynamicAOperation = [[DynamicAOperation alloc] init];
    self.dynamicBoperation = [[DynamicBOperation alloc] init];
    self.dynamicCOperation = [[DynamicCOperation alloc] init];
    [self testThreeSeprate];
    [self testThreeDynamcSeprate];
}

//dynamicA与dynamicB，staticA独立
-(void)testThreeSeprate
{
    [self.staticLibA printStaticLibA];
    [self.dynamicAOperation operationStaticAdd];
    [self.staticLibA printStaticLibA];
    [self.dynamicBoperation operationStaticAdd];
    [self.staticLibA printStaticLibA];
}

-(void)testThreeDynamcSeprate
{
    [self.dynamicCOperation printGlobalValueC];
    [self.dynamicAOperation operationDynamicAdd];
    [self.dynamicBoperation operationDynamicAdd];
    [self.dynamicCOperation printGlobalValueC];
    [self.dynamicAOperation operationDynamicAdd];
}


@end
