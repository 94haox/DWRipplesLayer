//
//  ViewController.m
//  DWRipplesLayer
//
//  Created by Duke.wu on 16/4/7.
//  Copyright © 2016年 Duke.Wu. All rights reserved.
//

#import "ViewController.h"
#import "DWRipplesLayer.h"


@interface ViewController ()

@property (nonatomic, strong) UIView *frontView;

@property (nonatomic, strong) DWRipplesLayer *ripplesLayer;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.frontView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
  self.frontView.backgroundColor = [UIColor grayColor];
  [self.view addSubview:self.frontView];
  
  self.ripplesLayer = [[DWRipplesLayer alloc] init];
  [self.view.layer insertSublayer:self.ripplesLayer below:self.frontView.layer];
  self.ripplesLayer.position = self.frontView.center;
  
  [self.ripplesLayer startAnimation];
  

  // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
