//
//  TipViewController.m
//  Tips
//
//  Created by Emmanuel Texier on 12/22/14.
//  Copyright (c) 2014 Emmanuel Texier. All rights reserved.
//

#import "TipViewController.h"

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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
    NSArray *tipValues = @[@(0.15), @(0.18), @(0.2)];
    float tip = [tipValues[self.tipControl.selectedSegmentIndex] floatValue]* billAmount;
    float total = billAmount + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
    
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
}
@end
