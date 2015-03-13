//
//  EnterAdjetiveViewController.m
//  WordPlay
//
//  Created by Rockstar. on 3/10/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "EnterAdjetiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjetiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjetiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Name: %@, Verb: %@, Place: %@", self.name, self.verb, self.place);
    // Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"result"]) {
        if (self.adjectiveTextField.text && self.adjectiveTextField.text.length > 0) {
            return YES;
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Please enter an adjective" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];

            return NO;
        }
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"result"]) {
        ResultsViewController *vc = segue.destinationViewController;
        vc.name = self.name;
        vc.verb = self.verb;
        vc.place = self.place;
        vc.adjective = self.adjectiveTextField.text;
    }

}

@end
