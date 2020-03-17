//
//  PastTableViewController.h
//  SchoolTemplate
//
//  Created by Benjamin Rettig on 8/10/14.
//  Copyright (c) 2014 Ben Rettig. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PastCell.h"
#import "Past.h"


@interface PastTableViewController : UITableViewController

@property (nonatomic,strong) NSString * selectedLetter;

@property (nonatomic,strong) NSMutableArray * jsonArray;
@property (nonatomic,strong) NSMutableArray * pastArray;

- (void) retrieveData;

@end