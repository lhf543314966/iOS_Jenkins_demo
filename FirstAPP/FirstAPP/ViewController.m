//
//  ViewController.m
//  FirstAPP
//
//  Created by lihaifeng on 2017/11/6.
//  Copyright © 2017年 sunseaiot. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *switchLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"city" ofType:@"plist"];
    
    NSArray *cities = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    for (int i=0; i< cities.count; i++) {
        NSDictionary *dic = cities[i];
        NSLog(@"the value of date is %@", [dic valueForKey:@"date"]);
        NSLog(@"the value of content is %@", [dic valueForKey:@"content"]);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
