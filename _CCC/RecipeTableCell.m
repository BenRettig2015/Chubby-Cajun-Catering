//
//  CustomTableCell.m
//  CustomTable
//
//  Created by Ben Rettig on 2/12/16.
//  Copyright (c) 2016 Ben Rettig. All rights reserved.
//

#import "RecipeTableCell.h"

@implementation RecipeTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
