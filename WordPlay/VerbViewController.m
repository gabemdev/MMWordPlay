//
//  VerbViewController.m
//  WordPlay
//
//  Created by Rockstar. on 3/10/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "VerbViewController.h"
#import "PlaceViewController.h"

@interface VerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation VerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"place"]) {
        if (self.verbTextField.text && self.verbTextField.text.length > 0) {
            return YES;
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Please enter a verb" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];

            return NO;
        }
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"place"]) {
        PlaceViewController *vc = segue.destinationViewController;
        vc.name = self.name;
        vc.verb = self.verbTextField.text;
        
    }
}



@end
