//
//  ChatListViewController.m
//  group project
//
//  Created by Robert Thompson on 7/13/14.
//  Copyright (c) 2014 Google. All rights reserved.
//

#import "ChatListViewController.h"
#import "ChatViewController.h"

@interface ChatListViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *ChatListScrollView;
- (IBAction)onGraceTap:(UITapGestureRecognizer *)sender;
@property (weak, nonatomic) IBOutlet UIView *graceView;

@end

@implementation ChatListViewController

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
    
    //set title of navigation item so that it has a nice white color

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0,0,120,50)];
    label.text = @"Chats";
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    self.navigationItem.titleView = label;
    

    self.ChatListScrollView.contentSize = CGSizeMake(320,562);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onGraceTap:(UITapGestureRecognizer *)sender {
    
    
    ChatViewController *vc = [[ChatViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;


    
    UINavigationController *chatNC = [[UINavigationController alloc] initWithRootViewController:vc];
  
    
   chatNC.navigationBar.barTintColor = [UIColor colorWithRed:230.0f/255.0f green:33.0f/255.0f blue:23.0f/255.0f alpha:1];
   chatNC.navigationBar.translucent = NO;

    self.graceView.backgroundColor = [UIColor colorWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1];
    
    
    
    [self presentViewController:chatNC animated:YES completion:nil];
    
    
    
}
@end
