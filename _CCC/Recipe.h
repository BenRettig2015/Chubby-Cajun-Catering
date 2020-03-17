//
//  Recipe.h
//  RecipeApp
//
//  Created by Ben Rettig on 2/12/16.
//  Copyright (c) 2016 Ben Rettig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (nonatomic, strong) NSString *image; // image filename of recipe
@property (nonatomic, strong) NSArray *ingredients; // ingredients of recipe

@end
