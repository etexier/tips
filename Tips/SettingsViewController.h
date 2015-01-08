//
//  SettingsViewController.h
//  Tips
//
//  Created by Emmanuel Texier on 12/23/14.
//  Copyright (c) 2014 Emmanuel Texier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *lowerPercentSlider;
@property (weak, nonatomic) IBOutlet UISlider *mediumPercentSlider;
@property (weak, nonatomic) IBOutlet UISlider *higherPercentSlider;
- (IBAction)lowerPercentSliderValueChanged:(id)sender;
- (IBAction)mediumPercentSliderValueChanged:(id)sender;
- (IBAction)higherPercentSliderValueChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *DefaultsButton;
@property (weak, nonatomic) IBOutlet UILabel *lowerPercentLabel;
@property (weak, nonatomic) IBOutlet UILabel *mediumPercentLabel;
@property (weak, nonatomic) IBOutlet UILabel *higherPercentLabel;
- (IBAction)setDefaultsSettings:(id)sender;

@end
