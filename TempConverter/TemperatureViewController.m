//
//  TemperatureViewController.m
//  TempConverter
//
//  Created by Chris Stoner on 8/26/14.
//  Copyright (c) 2014 Yahoo! Inc. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController  ()  //cstoner

@property (nonatomic, weak) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, weak) IBOutlet UITextField *celsiusTextField;
@property (nonatomic, weak) IBOutlet UIButton *convertButton;

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization - cstoner
        self.title = @"Temperature Calculator";
        // cstoner - maybe set temp here
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.fahrenheitTextField.delegate = self;
    self.fahrenheitTextField.text = @"98.6";
    
    [self.convertButton addTarget:self action:@selector(updateValues) forControlEvents:(UIControlEventValueChanged)];
    
    [self updateValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark  - Private methods

-(void) onDoneButton {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void) updateValues
{
    float tempFahren = [self.fahrenheitTextField.text floatValue];
    float temp=0;
    
    temp = tempFahren - 32;
    float tempCelsius = temp * 5/9;
    
    self.celsiusTextField.text = [NSString stringWithFormat:@"%0.1f", tempCelsius];
}

#pragma mark - UITextField delegate

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:(@selector(onDoneButton))];
    
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    self.navigationItem.rightBarButtonItem = nil;
    [self updateValues];
    
    return YES;
}

@end
