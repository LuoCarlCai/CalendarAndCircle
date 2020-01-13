//
//  CalendarViewController.m
//  积分
//
//  Created by 我要变好看 on 2020/1/7.
//  Copyright © 2020 com.my.friends. All rights reserved.
//


#import "CalendarViewController.h"
#import "SFCalendarManager.h"
#import "SFCalendarView.h"

@interface CalendarViewController ()

@property (nonatomic, strong) SFCalendarView *calendarView;


@end

@implementation CalendarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"签到";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.calendarView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (SFCalendarView *)calendarView
{
    if (!_calendarView) {
        _calendarView = [[[NSBundle mainBundle] loadNibNamed:@"SFCalendarView" owner:nil options:nil] firstObject];
        _calendarView.frame = CGRectMake(0, 100.0f, self.view.width, 350.f);
    }
    
    return _calendarView;
}
    

@end
