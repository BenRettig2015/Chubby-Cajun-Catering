//
//  AboutViewController.h
//  RecipeApp
//
//  Created by Ben Rettig on 2/12/16.
//  Copyright (c) 2016 Ben Rettig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController



@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic) UIScrollView *scrollView;

@property (strong, nonatomic) UILabel *topLabel;
@property (strong, nonatomic) UILabel *bottomLabel;

@property (strong, nonatomic) UIView *boxView;



@property (nonatomic, strong) IBOutlet UIImageView *backgroundImageView;

@property (nonatomic, strong) IBOutlet UIImageView *aboutImage;


@property (nonatomic, strong) IBOutlet UIImageView *logoImage;






-(IBAction)OpenWebsite:(id)sender;


@end
