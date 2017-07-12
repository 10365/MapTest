//
//  ViewController.m
//  mapTest
//
//  Created by mac on 17/7/12.
//  Copyright © 2017年 liying. All rights reserved.
//

#import "ViewController.h"
#import <MAMapKit/MAMapKit.h>
@interface ViewController ()<MAMapViewDelegate>
@property (nonatomic, strong)  MAMapView *mapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    self.mapView.delegate = self;
    self.mapView.centerCoordinate = CLLocationCoordinate2DMake(41.830852, 123);
    self.mapView.rotateEnabled = NO;//禁止地图旋转
    ///把地图添加至view
    [self.view addSubview:self.mapView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
