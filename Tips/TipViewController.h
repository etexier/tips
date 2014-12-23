//
//  TipViewController.h
//  Tips
//
//  Created by Emmanuel Texier on 12/22/14.
//  Copyright (c) 2014 Emmanuel Texier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TipViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UITextField *billAmountField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
- (IBAction)onTap:(id)sender;

- (IBAction) updateValues: (id) sender;

@end
