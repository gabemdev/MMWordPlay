//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Rockstar. on 3/10/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "EnterNameViewController.h"
#import "VerbViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    

}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"verb"]) {
        if (self.nameTextField.text && self.nameTextField.text.length > 0) {
            return YES;
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Please enter a name" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];

            return NO;
        }
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"verb"]) {
        VerbViewController *vc = segue.destinationViewController;
        vc.name = self.nameTextField.text;

    }
}

- (IBAction)unwindFromResults:(UIStoryboardSegue *)sender {
    self.nameTextField.text = @"";

}

@end
