//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Mary Jenel Myers on 1/6/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h" //remember to add the header of the destination file

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender //executes between view controls
{
    EnterAdjectiveViewController *vc = segue.destinationViewController; //changes the destination view controller title to the title of the button in the old view controller
    vc.title = [sender currentTitle];
    vc.name = self.nameTextField.text;

    }
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (!(self.nameTextField.text && self.nameTextField.text.length > 0)) //! means opposite.. if you have a text and it is greater than the length of 0.. continue...
    {
        return NO;
    }
    else {
        return YES;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
