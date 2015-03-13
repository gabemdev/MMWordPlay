//
//  PlaceViewController.m
//  WordPlay
//
//  Created by Rockstar. on 3/10/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "PlaceViewController.h"
#import "EnterAdjetiveViewController.h"

@interface PlaceViewController ()
@property (weak, nonatomic) IBOutlet UITextField *placeTextField;

@end

@implementation PlaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        NSLog(@"Name: %@, Verb: %@", self.name, self.verb);
    // Do any additional setup after loading the view.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"adjective"]) {
        if (self.placeTextField.text && self.placeTextField.text.length > 0) {
            return YES;
        } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Oops" message:@"Please enter valid location" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alert show];

            return NO;
        }
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"adjective"]) {
        EnterAdjetiveViewController *vc = segue.destinationViewController;
        vc.name = self.name;
        vc.verb = self.verb;
        vc.place = self.placeTextField.text;
    }
    
}

@end
