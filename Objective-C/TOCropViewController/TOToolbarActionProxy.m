//
//  TOToolbarActionProxy.m
//  CropViewController
//
//  Created by Gaoyang on 2020/12/25.
//  Copyright © 2020 Tim Oliver. All rights reserved.
//

#import "TOToolbarActionProxy.h"

@interface TOToolbarActionProxy ()

@property (nonatomic, readwrite, unsafe_unretained) id target;

@end

@implementation TOToolbarActionProxy

+ (instancetype)proxyWithTarget:(id __unsafe_unretained)target {
    TOToolbarActionProxy *proxy = [TOToolbarActionProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    if (_target) {
        return [_target methodSignatureForSelector:sel];
    }
    return [super methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    if (_target) {
        [invocation invokeWithTarget:_target];
    }
}

- (SEL)donwSelector { return NSSelectorFromString(@"doneButtonTapped"); }
- (SEL)cancelSelector { return NSSelectorFromString(@"cancelButtonTapped"); }
- (SEL)resetCropViewLayoutSelector { return NSSelectorFromString(@"resetCropViewLayout"); }
- (SEL)showAspectRatioDialogSelector { return NSSelectorFromString(@"showAspectRatioDialog"); }
- (SEL)rotateCropViewCounterclockwiseSelector { return NSSelectorFromString(@"rotateCropViewCounterclockwise"); }
- (SEL)rotateCropViewClockwiseSelector { return NSSelectorFromString(@"rotateCropViewClockwise"); }

@end
