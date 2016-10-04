//
//  SecondViewController.h
//  DelegateExample
//
//  Created by Jeff Kiesel on 10/3/16.
//  Copyright © 2016 jk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol SecondViewControllerDelegate <NSObject>

-(void)done:(NSString *)someText;

@end

@interface SecondViewController : UIViewController {
    IBOutlet UITextField *someText;
    IBOutlet UIButton *returnButton;
    id secondViewControllerDelegate;
}

@property (weak, nonatomic) id<SecondViewControllerDelegate>secondViewControllerDelegate;
@property (strong, nonatomic) UITextField *someText;

- (IBAction)returnButtonPressed:(id)sender;

@end
