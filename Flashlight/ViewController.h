//
//  ViewController.h
//  Flashlight
//
//  Created by Daniel Reid on 3/14/13.
//  Copyright (c) 2013 TitanTV BIM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *toggleSwitch;
@property (weak, nonatomic) IBOutlet UISlider *brightnessSlider;
@property (weak, nonatomic) IBOutlet UIView *lightSource;

- (IBAction)setLightSourceAlphaValue:(id)sender;

@end
