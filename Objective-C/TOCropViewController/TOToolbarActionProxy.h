//
//  TOToolbarActionProxy.h
//  CropViewController
//
//  Created by Gaoyang on 2020/12/25.
//  Copyright © 2020 Tim Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TOToolbarActionProxy : NSProxy

/// target
@property (nonatomic, readonly, unsafe_unretained) id target;
+ (instancetype)proxyWithTarget:(id __unsafe_unretained)target;

/// selector for tap down button
@property (nonatomic, readonly) SEL donwSelector;
/// selector for tap down button
@property (nonatomic, readonly) SEL cancelSelector;
/// selector for tap down button
@property (nonatomic, readonly) SEL resetCropViewLayoutSelector;
/// selector for tap down button
@property (nonatomic, readonly) SEL showAspectRatioDialogSelector;
/// selector for tap down button
@property (nonatomic, readonly) SEL rotateCropViewCounterclockwiseSelector;
/// selector for tap down button
@property (nonatomic, readonly) SEL rotateCropViewClockwiseSelector;

@end

NS_ASSUME_NONNULL_END
