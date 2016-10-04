//
//  SecondViewController.m
//  DelegateExample
//
//  Created by Jeff Kiesel on 10/3/16.
//  Copyright © 2016 jk. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

@synthesize someText;
@synthesize secondViewControllerDelegate = _secondViewControllerDelegate;

- (IBAction)returnButtonPressed:(id)sender {
    [self.secondViewControllerDelegate done:someText.text];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
