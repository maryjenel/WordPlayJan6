//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Mary Jenel Myers on 1/6/15.
//  Copyright (c) 2015 Mary Jenel Myers. All rights reserved.
//

#import "ResultsViewController.h"


@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
  [super viewDidLoad];
    NSDictionary *boldDict = @{NSFontAttributeName: [UIFont fontWithName:@"Helvetica-Bold" size:16.0]};

    NSAttributedString *attributedName = [[NSAttributedString alloc]initWithString:self.name attributes:boldDict]; // keep it as attributed string not mutable string because it consumes less memory.

//    [attributedName addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0] range:NSMakeRange(0, self.name.length)];
    NSAttributedString *attributedVerb = [[NSAttributedString alloc] initWithString:self.verb attributes:boldDict];
   // another way to do it but just takes more memory is rearranging it as a mutable string: NSMutableAttributedString *attributedVerb = [[NSMutableAttributedString alloc]initWithString:self.verb];
  //  [attributedVerb addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0] range:NSMakeRange(0, self.verb.length)];
    NSAttributedString *attributedAdjective = [[NSAttributedString alloc]initWithString:self.adjective attributes:boldDict];
    //NSMutableAttributedString *attributedAdjective = [[NSMutableAttributedString alloc]initWithString:self.adjective];
   // [attributedAdjective addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]range:NSMakeRange(0, self.adjective.length)];
    NSAttributedString *attributedNoun = [[NSAttributedString alloc]initWithString:self.noun attributes:boldDict];
   // NSMutableAttributedString *attributedNoun = [[NSMutableAttributedString alloc]initWithString:self.noun];

   // [attributedNoun addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Helvetica-Bold" size:16.0]range:NSMakeRange(0, self.noun.length)];

    NSMutableAttributedString *storyPartOne = [[NSMutableAttributedString alloc]initWithString:@" One day, "];
    NSAttributedString *storyPartTwo = [[NSMutableAttributedString alloc]initWithString:@" was "];
    NSAttributedString *storyPartThree = [[NSMutableAttributedString alloc]initWithString:@" into Mobile Makers when he noticed how "];
    NSAttributedString *storyPartFour = [[NSMutableAttributedString alloc]initWithString:@" his "];
    NSAttributedString *storyPartFive = [[NSMutableAttributedString alloc]initWithString:@" were.\n"];

    [storyPartOne appendAttributedString:attributedName];
    [storyPartOne appendAttributedString:storyPartTwo];
    [storyPartOne appendAttributedString:attributedVerb];
    [storyPartOne appendAttributedString:storyPartThree];
    [storyPartOne appendAttributedString:attributedAdjective];
    [storyPartOne appendAttributedString:storyPartFour];
    [storyPartOne appendAttributedString:attributedNoun];
    [storyPartOne appendAttributedString:storyPartFive];

    
    self.resultsTextView.attributedText = storyPartOne;




  //  NSMutableAttributedString *

//NSMutableAttributedString *attributedStory = [[NSMutableAttributedString alloc] initWithString:@"One day, "
  //  NSString *madLibStory = [NSString stringWithFormat:@"One day, %@ was %@ into Mobile Makers when he noticed how %@ his %@ were. \n", self.name, self.verb, self.adjective, self.noun];
  //  self.resultsTextView.text = madLibStory; // sends the text of the result text view
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
