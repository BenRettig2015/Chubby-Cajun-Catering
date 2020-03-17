//
//  LettersTableViewController.m
//  SlideOutMenu
//
//  Created by Zhn on 16/02/2015.
//  Copyright (c) 2015 Archetapp. All rights reserved.
//

#import "LettersTableViewController.h"
#import "PastTableViewController.h"

@implementation LettersTableViewController
@synthesize myLabel;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    [super prepareForSegue:segue sender:sender];
    
    NSIndexPath* _indexPath = [self.tableView indexPathForSelectedRow];
    UITableViewCell* _cell = [self.tableView cellForRowAtIndexPath:_indexPath];
    
    UIViewController* _vc = [segue destinationViewController];
    if ([_vc isKindOfClass:[PastTableViewController class]])
    {
        PastTableViewController* _pastVC = (PastTableViewController*)_vc;
        _pastVC.selectedLetter = _cell.textLabel.text;
    }
    
    
    
}



@end
