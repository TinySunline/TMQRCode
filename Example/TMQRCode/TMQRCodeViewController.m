//
//  TMQRCodeViewController.m
//  TMQRCode
//
//  Created by sunjf@sunline.cn on 02/05/2017.
//  Copyright (c) 2017 sunjf@sunline.cn. All rights reserved.
//

#import "TMQRCodeViewController.h"
#import <TMQRCode/TMQRCode.h>

@interface TMQRCodeViewController ()

@end

@implementation TMQRCodeViewController

- (void)viewDidLoad
{
    TMQRCode *code = [[TMQRCode alloc]init];
    code.frame = CGRectMake(0, 0, 300, 300);
    [code performSelector:@selector(setParam: :) withObject:@"code" withObject:@"11"];
    [self.view addSubview:code];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
