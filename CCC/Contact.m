
//
//  Contact.m
//
//
//  Created by Ben Rettig on 4/15/16.
//  Copyright © 2016 Ben Rettig. All rights reserved.
#import <UIKit/UIKit.h>


#import "Contact.h"

@interface Contact ()

@end

@implementation Contact





- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}


-(IBAction)MakePhoneCall:(id)sender {
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:9039833848"]];
}

-(IBAction)OpenWebsite:(id)sender {
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.chubbycajuncatering.com"]];
}



- (IBAction)address:(id)sender {
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"3 Chubby Cajun Caters"
                                                      message:@"Chubby Cajun Catering can be contact via mail @ P.O. Box 209 Longview, Texas 75684"
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    
    [message show];
}





- (IBAction)email:(id)sender {
    // Email Subject
    NSString *emailTitle = @"Inquiries";
    // Email Content
    NSString *messageBody = @"Contact 3 Chubby Cajun Caters!";
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"benrettig28@hotmail.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}
    
    




    
@end
