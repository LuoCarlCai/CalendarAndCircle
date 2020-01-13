//
//  ViewController.m
//  积分
//
//  Created by 我要变好看 on 2020/1/7.
//  Copyright © 2020 com.my.friends. All rights reserved.
//

#import "ViewController.h"
#import "circleViewController.h"
#import "CalendarViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(20, 100, 80, 40)];
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"转盘" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.tag = 1;
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(20, 150, 80, 40)];
    btn1.backgroundColor = [UIColor redColor];
    [btn1 setTitle:@"日历签到" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn1.tag = 2;
    [btn1 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    

}

-(void)clickBtn:(UIButton *)btn{
    
    NSLog(@"asdfsafsafsafasfsadfas");
    
    int tag = (int)btn.tag;
    if (tag == 1) {
        circleViewController *vc = [[circleViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (tag == 2){
        CalendarViewController *vc = [[CalendarViewController alloc]init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}


@end
