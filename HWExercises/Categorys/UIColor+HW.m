//
//  UIColor+HW.m
//  HWExercises
//
//  Created by sxmaps_w on 2017/5/22.
//  Copyright © 2017年 wqb. All rights reserved.
//

#import "UIColor+HW.h"

@implementation UIColor (HW)

//16进制转化RGB
+ (UIColor *)colorWithHexString:(NSString *)string
{
    if ([string hasPrefix:@"#"])
        string = [string substringFromIndex:1];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    NSString *rString = [string substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [string substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [string substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r/255.0f) green:((float)g/255.0f) blue:((float)b/255.0f) alpha:1];
}

//随机色
+ (UIColor *)randomColor
{
    CGFloat red = arc4random_uniform(256);
    CGFloat green = arc4random_uniform(256);
    CGFloat blue = arc4random_uniform(256);
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
}

@end
