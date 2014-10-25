//
//  BlankStateViewController.m
//  BikeCompass
//
//  Created by Raúl Riera on 24/10/2014.
//  Copyright (c) 2014 Raúl Riera. All rights reserved.
//

#import "BlankStateViewController.h"

@interface BlankStateViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (nonatomic, strong) NSString *titleText;
@property (nonatomic, strong) NSString *messageText;

@end

@implementation BlankStateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = self.titleText;
    self.messageLabel.text = self.messageText;
}

- (void)setTitle:(NSString *)title andMessage:(NSString *)message
{
    self.titleText = title;
    self.messageText = message;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
