//
//  UIViewController+BlankStateViewController.h
//  BikeCompass
//
//  Created by Raúl Riera on 26/10/2014.
//  Copyright (c) 2014 Raúl Riera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlankStateViewController.h"

typedef enum : NSUInteger {
    BlankStateViewControllerTypeDefault
} BlankStateViewControllerType;

@interface UIViewController (BlankStateViewController)

- (void)overlayBlankStateViewWithTitle:(NSString *)title message:(NSString *)message;

/*!
 *	Use this method to remove any blank state view overlays present in the view stack
 */
- (void)removeBlankStateViewOverlay;

- (BOOL)isBlankStateViewOverlayPresent;

@end
