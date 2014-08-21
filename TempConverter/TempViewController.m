//
//  TempViewController.m
//  TempConverter
//
//  Created by Chris Stoner on 8/15/14.
//  Copyright (c) 2014 Yahoo! Inc. All rights reserved.
//

#import "TempViewController.h"
#import <UIKit/UIKit.h>   //cstoner

@interface TempViewController : UIViewController <UITextFieldDelegate>  //cstoner

@property (nonatomic, weak) IBOutlet UITextField *fahrenheit;
@property (nonatomic, weak) IBOutlet UITextField *celsius;
@property (nonatomic, weak) IBOutlet UIBarButtonItem *convertButton;

@end

@implementation TempViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
