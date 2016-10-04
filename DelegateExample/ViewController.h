//
//  ViewController.h
//  DelegateExample
//
//  Created by Jeff Kiesel on 10/3/16.
//  Copyright © 2016 jk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewControllerDelegate>
{
    IBOutlet UILabel *userNameLabel;
}

@property (nonatomic,strong) UILabel *userNameLabel;


@end

