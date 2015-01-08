//
//  SettingsHelper.h
//  Tips
//
//  Created by Emmanuel Texier on 1/7/15.
//  Copyright (c) 2015 Emmanuel Texier. All rights reserved.
//

#ifndef Tips_SettingsHelper_h
#define Tips_SettingsHelper_h

#import <objc/NSObject.h>

@interface SettingsHelper : NSObject
+ (int)getLowerPercentSetting;

+ (int)getMediumPercentSetting;

+ (int)getHigherPercentSetting;

+ (void)setLowerPercentSetting:(int)v;

+ (void)setMediumPercentSetting:(int)v;

+ (void)setHigherPercentSetting:(int)v;

+ (NSString *)getPercentText:(float)n;

+ (NSString *)getLowerPercentText;

+ (NSString *)getHigherPercentText;

+ (NSString *)getMediumPercentText;

+ (void)setDefaults;
@end

#endif
