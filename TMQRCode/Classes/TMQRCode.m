//
//  QRCodeControl.m
//  TinyEmbed
//
//  Created by xiangfp on 17/2/3.
//  Copyright © 2017年 Sunline. All rights reserved.
//

#import "TMQRCode.h"
#import "QRCodeGenerator.h"


@interface TMQRCode ()

@property(nonatomic, assign) NSString *value;

@end

@implementation TMQRCode

- (id)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor redColor];
        
        [self addTarget:self action:@selector(touchUpInside:event:) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

- (void)touchUpInside:(id)sender event:(UIEvent*)event
{
    [self executiveEvent:@"aa" array:@[@"a", @"b", @"c"]];
}

-(void)executiveEvent:(NSString *)event array:(NSArray *)array
{
    UIView *supView = self.superview;
    if([supView respondsToSelector:@selector(executiveEvent: array:)]) {
        [supView performSelector:@selector(executiveEvent: array:) withObject:event withObject:array];
    }
}

-(void)setParam:(NSString *)name :(id)value
{
    if([name isEqual:@"code"]) {
        self.value = value;
    }
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    UIImage *image = [QRCodeGenerator qrImageForString:self.value imageSize:self.bounds.size.width];
    [image drawInRect:self.bounds];
}

@end
