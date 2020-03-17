

//
//  Contact.h
//
//
//  Created by Ben Rettig on 4/15/16.
//  Copyright © 2016 Ben Rettig. All rights reserved.

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface Contact : UIViewController <MFMailComposeViewControllerDelegate> 

-(IBAction)MakePhoneCall:(id)sender;
-(IBAction)OpenWebsite:(id)sender;

- (IBAction)address:(id)sender;

- (IBAction)email:(id)sender;


@end

