//
//  ViewController.m
//  label晃动动画
//
//  Created by ky on 15/6/12.
//  Copyright (c) 2015年 ky. All rights reserved.
//

#import "ViewController.h"
#import "CALayer+Anim.h"
@interface ViewController ()

@property (nonatomic,copy) NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _array=[NSMutableArray array];
    [_array addObject:@"1"];
    [_array removeAllObjects];

    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(80, 80, self.view.bounds.size.width-160, 80)];
    imageView.image=[UIImage imageNamed:@"test.jpg"];
    imageView.layer.masksToBounds=YES;
    imageView.contentMode=UIViewContentModeScaleAspectFit;
    [self performSelector:@selector(shake:) withObject:imageView afterDelay:3.0];
  //  [imageView.layer shake];
    [self.view addSubview:imageView];
    
    UILabel *testLabell=[[UILabel alloc]initWithFrame:CGRectMake(0,CGRectGetMaxY(imageView.frame)+4, self.view.bounds.size.width, 20)];
    testLabell.font=[UIFont systemFontOfSize:16.0];
    testLabell.textColor=[UIColor redColor];
    testLabell.text=@"密码输入错误";
    testLabell.textAlignment=NSTextAlignmentCenter;
    [testLabell.layer shake];
     [self.view addSubview:testLabell];
}

- (void)shake:(UIImageView *)imageView
{
    [imageView.layer shake];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
