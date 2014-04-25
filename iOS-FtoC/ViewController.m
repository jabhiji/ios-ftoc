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
- (IBAction)convertToC:(id)sender;
- (IBAction)convertToF:(id)sender;

@end

@implementation ViewController

@synthesize valF;
@synthesize valC;

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
}

- (IBAction)convertToF:(id)sender {
    float TC = [valC.text floatValue];
    float TF = 9.0*TC/5.0 + 32.0;
    valF.text = [NSString stringWithFormat:@"%.1f",TF];
}
@end
