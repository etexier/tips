//
//  TipViewController.m
//  Tips
//
//  Created by Emmanuel Texier on 12/22/14.
//  Copyright (c) 2014 Emmanuel Texier. All rights reserved.
//

#import "TipViewController.h"
#import "SettingsViewController.h"
#import "SettingsHelper.h"

@interface TipViewController ()

@end

@implementation TipViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Tip Calculator";
    }
    return self;
    
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"View did appear for TipViewController");
    [self.tipControl setTitle:[SettingsHelper getLowerPercentText] forSegmentAtIndex:0];
    [self.tipControl setTitle:[SettingsHelper getMediumPercentText] forSegmentAtIndex:1];
    [self.tipControl setTitle:[SettingsHelper getHigherPercentText] forSegmentAtIndex:2];
    [self updateValues:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem =
    [[UIBarButtonItem alloc] initWithTitle:@"Settings"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(onSettingsButton)];
}

- (void)onSettingsButton {
    [self.navigationController pushViewController:[[SettingsViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)updateValues:(id)sender {
    float billAmount = [self.billAmountField.text floatValue];
    NSArray *tipValues = @[@([SettingsHelper getLowerPercentSetting]), @([SettingsHelper getMediumPercentSetting]), @([SettingsHelper getHigherPercentSetting])];
    float tip = ([tipValues[self.tipControl.selectedSegmentIndex] floatValue]/100)* billAmount;
    float total = billAmount + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}
@end
