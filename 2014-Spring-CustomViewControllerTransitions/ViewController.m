//
//  ViewController.m
//  2014-Spring-CustomViewControllerTransitions
//
//  Created by T. Andrew Binkowski on 5/19/14.
//  Copyright (c) 2014 T. Andrew Binkowski. All rights reserved.
//

#import "ViewController.h"
#import "TransitionAnimator.h"
#import "ModalViewController.h"
#import "NavigationTransitionAnimator.h"
#import "NavigationControllerDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


///-----------------------------------------------------------------------------
#pragma mark - UIViewControllerTransitioningDelegate Methods
///-----------------------------------------------------------------------------
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source {
    
    TransitionAnimator *animator = [TransitionAnimator new];
    //Configure the animator
    animator.presenting = YES;
    return animator;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed {
    TransitionAnimator *animator = [TransitionAnimator new];
    return animator;
}

///-----------------------------------------------------------------------------
#pragma mark - Segue
///-----------------------------------------------------------------------------
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [super prepareForSegue:segue sender:sender];
    
    UIViewController *detailViewController = segue.destinationViewController;
    detailViewController.transitioningDelegate = self;
    detailViewController.modalPresentationStyle = UIModalPresentationCustom;
}


@end
