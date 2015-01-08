//
//  SettingsViewController.m
//  Tips
//
//  Created by Emmanuel Texier on 12/23/14.
//  Copyright (c) 2014 Emmanuel Texier. All rights reserved.
//

#import "SettingsViewController.h"
#import "Settingshelper.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGAffineTransform trans = CGAffineTransformMakeRotation(-M_PI_2);
    self.mediumPercentSlider.transform = trans;
    self.lowerPercentSlider.transform = trans;
    self.higherPercentSlider.transform = trans;
    self.lowerPercentSlider.value = (float) [SettingsHelper getLowerPercentSetting];
    self.mediumPercentSlider.value = (float) [SettingsHelper getMediumPercentSetting];
    self.higherPercentSlider.value = (float) [SettingsHelper getHigherPercentSetting];
    self.lowerPercentLabel.text = [SettingsHelper getPercentText:self.lowerPercentSlider.value];
    self.mediumPercentLabel.text = [SettingsHelper getPercentText:self.mediumPercentSlider.value];
    self.higherPercentLabel.text = [SettingsHelper getPercentText:self.higherPercentSlider.value];
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

- (IBAction)lowerPercentSliderValueChanged:(id)sender {
    [SettingsHelper setLowerPercentSetting: (int) self.lowerPercentSlider.value];
    self.lowerPercentLabel.text = [SettingsHelper getLowerPercentText];

}

- (IBAction)mediumPercentSliderValueChanged:(id)sender {
    [SettingsHelper setMediumPercentSetting: (int) self.mediumPercentSlider.value];
    self.mediumPercentLabel.text = [SettingsHelper getMediumPercentText];
}

- (IBAction)higherPercentSliderValueChanged:(id)sender {
    [SettingsHelper setHigherPercentSetting: (int) self.higherPercentSlider.value];
    self.higherPercentLabel.text = [SettingsHelper getHigherPercentText];
}


- (IBAction)setDefaultsSettings:(id)sender {
    [SettingsHelper setDefaults];
    self.lowerPercentSlider.value = (float) [SettingsHelper getLowerPercentSetting];
    self.lowerPercentLabel.text = [SettingsHelper getLowerPercentText];
    self.mediumPercentSlider.value = (float) [SettingsHelper getMediumPercentSetting];
    self.mediumPercentLabel.text = [SettingsHelper getMediumPercentText];
    self.higherPercentSlider.value = (float) [SettingsHelper getHigherPercentSetting];
    self.higherPercentLabel.text = [SettingsHelper getHigherPercentText];

}
@end
