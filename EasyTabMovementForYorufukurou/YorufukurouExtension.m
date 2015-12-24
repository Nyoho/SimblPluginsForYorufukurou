//
//  YorufukurouExtension.m
//  EasyTabMovementForYorufukurou
//
//  Created by 北䑓 如法 on 12/8/23.
//  Copyright (c) 2012年 北䑓 如法. All rights reserved.
//

#import "YorufukurouExtension.h"
#import "NSObject+Swizzle.h"

@implementation YorufukurouExtension

+ (void)load
{
    {
        Class class = objc_getClass("TCTweetView");
        NSLog(@"%@", [class class]);
        [class swizzleMethod:@selector(keyDown:) withMethod:@selector(__addedKeyDown:)];
        [class swizzleMethod:@selector(performKeyEquivalent:) withMethod:@selector(__performKeyEquivalent:)];

    }
}

@end
