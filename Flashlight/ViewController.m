//
//  ViewController.m
//  Flashlight
//
//  Created by Daniel Reid on 3/14/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import "ViewController.h"

#define kOnOffToggle @"onOff"
#define kBrightnessLevel @"brightness"

@interface ViewController ()

@end

@implementation ViewController
-(void)synchronize
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:self.toggleSwitch.on forKey:kOnOffToggle];
    [userDefaults setFloat:self.brightnessSlider.value forKey:kBrightnessLevel];
    [userDefaults synchronize];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    self.brightnessSlider.value = [userDefaults floatForKey:kBrightnessLevel];
    self.toggleSwitch.on = [userDefaults boolForKey:kOnOffToggle];
    
    if([userDefaults boolForKey:kOnOffToggle]){
        self.lightSource.alpha = [userDefaults floatForKey:kBrightnessLevel];
    }
    else{
        self.lightSource.alpha  = 0.0;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setLightSourceAlphaValue:(id)sender {
    [self synchronize];
       
    if(self.toggleSwitch.on)
    {
        self.lightSource.alpha = self.brightnessSlider.value;
    }
    else{
        self.lightSource.alpha = 0.0;
    }
}
@end
