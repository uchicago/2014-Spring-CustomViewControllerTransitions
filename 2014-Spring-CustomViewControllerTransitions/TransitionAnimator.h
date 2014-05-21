//
//  TransitionAnimator.h
//  2014-Spring-CustomViewControllerTransitions
//
//  Created by T. Andrew Binkowski on 5/19/14.
//  Copyright (c) 2014 T. Andrew Binkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TransitionAnimator : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign, getter = isPresenting) BOOL presenting;
@end
