//
//  NSObject+YorufukurouExtension.m
//  EasyTabMovementForYorufukurou
//
//  Created by 北䑓 如法 on 12/8/23.
//  Copyright (c) 2012年 北䑓 如法. All rights reserved.
//

#import "NSObject+YorufukurouExtension.h"
#import <objc/runtime.h>

@implementation NSObject (YorufukurouExtension)

- (void)__addedKeyDown:(NSEvent *)event
{
    [self __addedKeyDown:event];

    if (event.type !=  NSKeyDown) return;

    if (event.keyCode == 43)
        [self performSelector:@selector(moveToPreviousTab:) withObject:self];
    else if (event.keyCode == 47)
        [self performSelector:@selector(moveToNextTab:) withObject:self];
}
@end
