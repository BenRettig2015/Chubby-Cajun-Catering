//
//  RecipeTableCell.h
//  RecipeApp
//
//  Created by Ben Rettig on 2/12/16.
//  Copyright (c) 2016 Ben Rettig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
