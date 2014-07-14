//
//  ChatViewController.m
//  group project
//
//  Created by Robert Thompson on 7/13/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textInputField;
- (IBAction)touchDownTextInputField:(UITextField *)sender;
@property (weak, nonatomic) IBOutlet UIView *textInputContainerView;
- (IBAction)editingEndedTextInputField:(UITextField *)sender;
- (IBAction)keyboardDismiss:(UITapGestureRecognizer *)sender;


@end

@implementation ChatViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UILabel *labelChat = [[UILabel alloc] initWithFrame:CGRectMake(0,0,120,50)];
    labelChat.text = @"Grace";
    labelChat.textColor = [UIColor whiteColor];
    labelChat.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = labelChat;
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style: UIBarButtonItemStyleBordered target:self action:@selector(Back)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Back
{
    [self dismissViewControllerAnimated:YES completion:nil]; // ios 6
}

- (IBAction)touchDownTextInputField:(UITextField *)sender {
      [UIView animateWithDuration:0.4 animations:^{
    self.textInputContainerView.frame = CGRectMake(0, 238, self.textInputContainerView.frame.size.width, self.textInputContainerView.frame.size.height);
          
          }];
    
    
}
- (IBAction)editingEndedTextInputField:(UITextField *)sender {
    

    
}

- (IBAction)keyboardDismiss:(UITapGestureRecognizer *)sender {
    [self.view endEditing:YES];
    
          [UIView animateWithDuration:0.4 animations:^{
    self.textInputContainerView.frame = CGRectMake(0, 453, self.textInputContainerView.frame.size.width, self.textInputContainerView.frame.size.height);
    
        }];
}
@end
