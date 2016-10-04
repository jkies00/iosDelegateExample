//
//  ViewController.m
//  DelegateExample
//
//  Created by Jeff Kiesel on 10/3/16.
//  Copyright © 2016 jk. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize userNameLabel;

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueToVC2"]) {
        SecondViewController *viewController = segue.destinationViewController;
        viewController.secondViewControllerDelegate = self;
    }
}

- (void) done:(NSString*)name {
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"Back in forst viewcontroller, method done, with name = %@",name);
    userNameLabel.text = name;
}

- (IBAction)unwindForSecondViewController:(UIStoryboardSegue*)segue {
    NSLog(@"in unwind");
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
