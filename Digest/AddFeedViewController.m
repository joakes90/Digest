//
//  AddFeedViewController.m
//  Digest
//
//  Created by Justin Oakes on 5/15/15.
//  Copyright (c) 2015 Oklasoft. All rights reserved.
//

#import "AddFeedViewController.h"
#import "BlogParser.h"

@interface AddFeedViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *feedURL;

@end

@implementation AddFeedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.feedURL.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addFeed:(id)sender {
    
    NSURL *url = [NSURL URLWithString:self.feedURL.text];
    BOOL validUrl = [[BlogParser sharedInstance] beginParseWithURL:url];
    // Verifying URL is not blank and is valid
    
    if (url && validUrl) {
        
        //call create source from postcontroller
        
        NSLog(@"valid URL");
    
    } else {
        [self displayError];
    }
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self addFeed:self];
    [textField resignFirstResponder];
    
    return YES;
}

-(void)displayError {
    UIAlertController *errorAlert = [UIAlertController alertControllerWithTitle:@"No valid URL provided." message:@"No valid URL was found. Please reenter the address and try again" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [errorAlert addAction:ok];
    [self presentViewController:errorAlert animated:YES completion:nil];
}

@end
