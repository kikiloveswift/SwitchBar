//
//  ShapeView.m
//  SwitchBar
//
//  Created by konglee on 2017/4/24.
//  Copyright © 2017年 konglee. All rights reserved.
//

#import "ShapeView.h"

@interface ShapeView()
{
    CGRect usedFrame;
}

@end

@implementation ShapeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        usedFrame = frame;
        [self getShape];
    }
    return self;
    
}

//- (void)drawRect:(CGRect)rect
//{
////    [self getShape];
//}

- (void)getShape
{
    CAShapeLayer *mask = [CAShapeLayer layer];
    //// General Declarations
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Shadow Declarations
    NSShadow* shadow2 = [[NSShadow alloc] init];
    shadow2.shadowColor = [UIColor.blackColor colorWithAlphaComponent: 0.5];
    shadow2.shadowOffset = CGSizeMake(3, 3);
    shadow2.shadowBlurRadius = 6;
    
    //// Bezier Drawing
//    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
//    [UIColor.blackColor setStroke];
//    bezierPath.lineWidth = 1;
//    [bezierPath stroke];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(51.5, 22.5)];
    [bezier2Path addLineToPoint: CGPointMake(150.5, 22.5)];
    [bezier2Path addLineToPoint: CGPointMake(174.5, 74.5)];
    [bezier2Path addLineToPoint: CGPointMake(25.5, 74.5)];
    [bezier2Path addLineToPoint: CGPointMake(51.5, 22.5)];
    CGContextSaveGState(context);
    CGContextSetShadowWithColor(context, shadow2.shadowOffset, shadow2.shadowBlurRadius, [shadow2.shadowColor CGColor]);
//    [bezier2Path fill];
    CGContextRestoreGState(context);
    mask.path = bezier2Path.CGPath;
    mask.fillColor = [UIColor lightGrayColor].CGColor;
    mask.cornerRadius = 5.0f;
    [self.layer addSublayer:mask];

}



@end
