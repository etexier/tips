//
// Created by Emmanuel Texier on 1/7/15.
// Copyright (c) 2015 Emmanuel Texier. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsHelper.h"


@import Foundation;

static NSUserDefaults *kDefaults;
static NSString *const USERDEFAULT_IS_INITIALIZED = @"UserDefaultIsInitialized";
static NSString *const LOWER_PERCENT_SETTING = @"LowerPercentSetting";
static NSString *const MEDIUM_PERCENT_SETTING = @"MediumPercentSetting";
static NSString *const HIGHER_PERCENT_SETTING = @"HigherPercentSetting";

@implementation SettingsHelper

+ (void) initialize {
    NSLog(@"Initializing SettingsHelper");
    kDefaults = [NSUserDefaults standardUserDefaults];
    if (![kDefaults boolForKey:USERDEFAULT_IS_INITIALIZED]) {
        [kDefaults setBool:YES forKey:USERDEFAULT_IS_INITIALIZED];
        [SettingsHelper setDefaults];
    }

    [kDefaults synchronize];
}

+ (void)setDefaults {
    [kDefaults setInteger:15 forKey:LOWER_PERCENT_SETTING];
    [kDefaults setInteger:18 forKey:MEDIUM_PERCENT_SETTING];
    [kDefaults setInteger:20 forKey:HIGHER_PERCENT_SETTING];
    [kDefaults synchronize];

}

+ (int)getLowerPercentSetting {
    return [kDefaults integerForKey:LOWER_PERCENT_SETTING];
}

+ (int)getMediumPercentSetting {
    return [kDefaults integerForKey:MEDIUM_PERCENT_SETTING];
}

+ (int)getHigherPercentSetting {
    return [kDefaults integerForKey:HIGHER_PERCENT_SETTING];
}

+ (void)setLowerPercentSetting:(int)v {
    [self setPercentSetting:v key:LOWER_PERCENT_SETTING];

}

+ (void)setMediumPercentSetting:(int)v {
    [self setPercentSetting:v key:MEDIUM_PERCENT_SETTING];

}

+ (void)setHigherPercentSetting:(int)v {
    [self setPercentSetting:v key:HIGHER_PERCENT_SETTING];

}

+ (void) setPercentSetting:(int) v key:(NSString *) key{
    [kDefaults setInteger:v forKey:key];
    [kDefaults synchronize];
}

+ (NSString *)getPercentText:(float) n {
    return [NSString stringWithFormat:@"%d%%", (int) n];
}

+ (NSString *)getLowerPercentText {
    return [[self class] getPercentText:[[self class] getLowerPercentSetting]];
}

+ (NSString *)getHigherPercentText {
    return [[self class] getPercentText:[[self class] getHigherPercentSetting]];
}

+ (NSString *)getMediumPercentText {
    return [[self class] getPercentText:[[self class] getMediumPercentSetting]];
}

@end