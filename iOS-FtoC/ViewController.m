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

@end

@implementation ViewController

@synthesize valF;
@synthesize valC;
@synthesize message;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
}

- (IBAction)convertToF:(id)sender {
    float TC = [valC.text floatValue];
    float TF = 9.0*TC/5.0 + 32.0;
    valF.text = [NSString stringWithFormat:@"%.1f",TF];
    [self printMessage:TF];
}

- (void) printMessage: (float) T
{
    if (T > 100) {
        message.text = [NSString stringWithFormat:@"Stay indoors!"];
    } else if (T > 80 && T <= 100) {
        message.text = [NSString stringWithFormat:@"Getting hot out there"];
    } else if (T > 70 && T <= 80) {
        message.text = [NSString stringWithFormat:@"Nice weather for biking"];
    } else if (T > 50 && T <= 70) {
        message.text = [NSString stringWithFormat:@"Seems a little chilly"];
    } else if (T > 32 && T <= 50) {
        message.text = [NSString stringWithFormat:@"Definitely cold"];
    } else {
        message.text = [NSString stringWithFormat:@"Freezing!"];
    }
}

@end
