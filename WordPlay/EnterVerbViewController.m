//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Mary Jenel Myers on 1/6/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterNounViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *VerbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterNounViewController *vc = segue.destinationViewController;
    vc.title = [sender currentTitle];
    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.verb = self.VerbTextField.text;
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (!(self.VerbTextField.text && self.VerbTextField.text.length > 0)) //! means opposite.. if you have a text and it is greater than the length of 0.. continue...
    {
        return NO;
    }
    else
    {
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
