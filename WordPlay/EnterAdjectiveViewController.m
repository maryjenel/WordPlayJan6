//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Mary Jenel Myers on 1/6/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterVerbViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    EnterVerbViewController *vc = segue.destinationViewController; //declares where it is going
    vc.title = [sender currentTitle];
    vc.name = self.name; // needs to declare name 
    vc.adjective = self.adjectiveTextField.text;

}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (!(self.adjectiveTextField.text && self.adjectiveTextField.text.length > 0)) //! means opposite.. if you have a text and it is greater than the length of 0.. continue...
    {
        return NO;
    }
    else {
        return YES;
    }
}

   // NSLog(@"%@", self.name);


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
