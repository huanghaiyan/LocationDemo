//
//  ViewController.m
//  LocationDemo
//
//  Created by huanghy on 16/3/9.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()
{
    CLLocationManager *locationManger;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    locationManger = [[CLLocationManager alloc]init];
    [locationManger setDesiredAccuracy:kCLLocationAccuracyBest];

    if ([[[UIDevice currentDevice] systemVersion] floatValue] >=8.0 ) {
        [locationManger requestAlwaysAuthorization];
    }
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >=9.0) {
        locationManger.allowsBackgroundLocationUpdates = YES;
    }
    
    [locationManger startUpdatingLocation];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
