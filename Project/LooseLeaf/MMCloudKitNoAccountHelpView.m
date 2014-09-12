//
//  MMCloudKitNoAccountHelpView.m
//  LooseLeaf
//
//  Created by Adam Wulf on 9/12/14.
//  Copyright (c) 2014 Milestone Made, LLC. All rights reserved.
//

#import "MMCloudKitNoAccountHelpView.h"
#import "UIView+Debug.h"
#import "Constants.h"

@implementation MMCloudKitNoAccountHelpView{
    CAShapeLayer* topArrow;
}

-(id) initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){

        UIColor* borderColor = [UIColor colorWithRed: 0.221 green: 0.221 blue: 0.219 alpha: 1];
        UIColor* halfWhite = [UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0.503];

        CGFloat width = frame.size.width;
        CGRect lineRect = CGRectMake(width*0.1, kWidthOfSidebarButtonBuffer, width*0.8, 1);
        UIView* line = [[UIView alloc] initWithFrame:lineRect];
        line.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth;
        line.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:.5];
        [self addSubview:line];

        UIImageView* settingsIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ios-settings-icon"]];
        settingsIcon.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        settingsIcon.center = CGPointMake(self.bounds.size.width/2, 40 + settingsIcon.bounds.size.height/2);
        [self addSubview:settingsIcon];
        
        topArrow = [CAShapeLayer layer];
        topArrow.bounds = CGRectMake(0, 0, 80, 80);
        topArrow.path = [self arrowPathForFrame:topArrow.bounds].CGPath;
        topArrow.lineWidth = 1;
        topArrow.strokeColor = borderColor.CGColor;
        topArrow.fillColor = halfWhite.CGColor;
        topArrow.position = CGPointMake(self.bounds.size.width/2, 164);
        
        
        UIImageView* iCloudSettings = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"iCloudSettings"]];
        iCloudSettings.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        iCloudSettings.center = CGPointMake(self.bounds.size.width/2, 238);
        [self addSubview:iCloudSettings];
        
        [self.layer addSublayer:topArrow];
        
    }
    return self;
}

-(void) layoutSubviews{
    topArrow.position = CGPointMake(self.bounds.size.width/2, topArrow.position.y);
}


-(UIBezierPath*) arrowPathForFrame:(CGRect)frame{
    UIBezierPath* arrowPath = UIBezierPath.bezierPath;
    [arrowPath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17090 * CGRectGetHeight(frame))];
    [arrowPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51266 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.65190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17089 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.65190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44944 * CGRectGetHeight(frame))];
    [arrowPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.81646 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51266 * CGRectGetHeight(frame))];
    [arrowPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.50000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.82911 * CGRectGetHeight(frame))];
    [arrowPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.18354 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51266 * CGRectGetHeight(frame))];
    [arrowPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34810 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51266 * CGRectGetHeight(frame))];
    [arrowPath addCurveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34810 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17089 * CGRectGetHeight(frame)) controlPoint1: CGPointMake(CGRectGetMinX(frame) + 0.34810 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.44944 * CGRectGetHeight(frame)) controlPoint2: CGPointMake(CGRectGetMinX(frame) + 0.34810 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17089 * CGRectGetHeight(frame))];
    [arrowPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17089 * CGRectGetHeight(frame))];
    [arrowPath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.65190 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.17090 * CGRectGetHeight(frame))];
    [arrowPath closePath];
    return arrowPath;
}

@end
