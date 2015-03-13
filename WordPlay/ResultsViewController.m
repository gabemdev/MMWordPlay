//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Rockstar. on 3/10/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setHidesBackButton:YES];
    [self showResult];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showResult {
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont fontWithName:@"Avenir-Heavy" size:20],
                                 NSForegroundColorAttributeName: [UIColor blackColor]};
    NSDictionary *normal = @{
                                 NSFontAttributeName: [UIFont fontWithName:@"Avenir-Roman" size:17],
                                 NSForegroundColorAttributeName: [UIColor blackColor]};

    NSMutableAttributedString *attString = [[NSMutableAttributedString alloc] init];

    NSAttributedString *one = [[NSAttributedString alloc] initWithString:@"One Day, " attributes:normal];
    NSAttributedString *nameString = [[NSAttributedString alloc] initWithString:self.name.uppercaseString attributes:attributes];
    NSAttributedString *was = [[NSAttributedString alloc] initWithString:@" was " attributes:normal];
    NSAttributedString *verbString = [[NSAttributedString alloc] initWithString:self.verb.uppercaseString attributes:attributes];
    NSAttributedString *into = [[NSAttributedString alloc] initWithString:@" into " attributes:normal];
    NSAttributedString *placeString = [[NSAttributedString alloc] initWithString:self.place.uppercaseString attributes:attributes];
    NSAttributedString *when = [[NSAttributedString alloc] initWithString:@" when he noticed how " attributes:normal];
    NSAttributedString *adjectiveString = [[NSAttributedString alloc] initWithString:self.adjective.uppercaseString attributes:attributes];
    NSAttributedString *studens = [[NSAttributedString alloc] initWithString:@" his students were." attributes:normal];

    [attString appendAttributedString:one];
    [attString appendAttributedString:nameString];
    [attString appendAttributedString:was];
    [attString appendAttributedString:verbString];
    [attString appendAttributedString:into];
    [attString appendAttributedString:placeString];
    [attString appendAttributedString:when];
    [attString appendAttributedString:adjectiveString];
    [attString appendAttributedString:studens];

    _resultsTextView.attributedText = attString;

}



@end
