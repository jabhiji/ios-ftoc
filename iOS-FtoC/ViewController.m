//
//  ViewController.m
//  iOS-FtoC
//
//  Created by Abhijit Joshi on 4/25/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *valF;
@property (weak, nonatomic) IBOutlet UITextField *valC;
@property (weak, nonatomic) IBOutlet UILabel *message;
- (IBAction)convertToC:(id)sender;
- (IBAction)convertToF:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageToDisplay;
@end

@implementation ViewController

@synthesize valF;
@synthesize valC;
@synthesize message;
@synthesize imageToDisplay;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [valF setBackgroundColor:[UIColor colorWithRed:125.0f/255.0f
                                             green:125.0f/255.0f
                                              blue:250.0f/255.0f
                                             alpha:1]];
    [valC setBackgroundColor:[UIColor colorWithRed:125.0f/255.0f
                                             green:125.0f/255.0f
                                              blue:250.0f/255.0f
                                             alpha:1]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertToC:(id)sender {
    float TF = [valF.text floatValue];
    float TC = (TF - 32.0)*5.0/9.0;
    valC.text = [NSString stringWithFormat:@"%.1f",TC];
    [self printMessage:TF];
    [valF resignFirstResponder]; // get rid of the keyboard
}

- (IBAction)convertToF:(id)sender {
    float TC = [valC.text floatValue];
    float TF = 9.0*TC/5.0 + 32.0;
    valF.text = [NSString stringWithFormat:@"%.1f",TF];
    [self printMessage:TF];
    [valC resignFirstResponder]; // get rid of the keyboard
}

- (void) printMessage: (float) T
{
    if (T > 110) {
        message.text = [NSString stringWithFormat:@"Stay indoors!"];
        [imageToDisplay setImage:[UIImage imageNamed: @"desert.png"]];
    } else if (T > 80 && T <= 110) {
        message.text = [NSString stringWithFormat:@"Getting hot out there"];
        [imageToDisplay setImage:[UIImage imageNamed: @"onTheBeach.png"]];
    } else if (T > 70 && T <= 80) {
        message.text = [NSString stringWithFormat:@"Nice weather for biking"];
        [imageToDisplay setImage:[UIImage imageNamed: @"biking.png"]];
    } else if (T > 50 && T <= 70) {
        message.text = [NSString stringWithFormat:@"Seems a little chilly"];
        [imageToDisplay setImage:[UIImage imageNamed: @"fallColors.png"]];
    } else if (T > 32 && T <= 50) {
        message.text = [NSString stringWithFormat:@"Definitely cold"];
        [imageToDisplay setImage:[UIImage imageNamed: @"himalayas.png"]];
    } else {
        message.text = [NSString stringWithFormat:@"Freezing!"];
        [imageToDisplay setImage:[UIImage imageNamed: @"penguin.png"]];
    }
}

@end
