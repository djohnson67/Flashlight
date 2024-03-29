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
@property (nonatomic) BOOL isLit;
@property (nonatomic) BOOL wasLit; //from mb
@property (nonatomic) BOOL fromMini;
@property (strong, nonatomic) NSString *aString;

- (IBAction)setLightSourceAlphaValue:(id)sender;

@end
