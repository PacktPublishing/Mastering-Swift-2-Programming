//
//  ViewController.m
//  SwiftInObjC
//
//  Created by Dan Beaulieu on 12/11/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//

#import "ViewController.h"
#import "SwiftInObjC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HelloFromSwift *hello = [[HelloFromSwift alloc] init];
    //NSString *hwo = hello.message;
    NSString *hw = [hello getMessage];

    NSLog(@"hello %@!", hw);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
