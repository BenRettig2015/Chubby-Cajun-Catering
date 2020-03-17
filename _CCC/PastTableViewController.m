//
//  PastTableViewController.m
//  SchoolTemplate
//
//  Created by Benjamin Rettig on 8/10/14.
//  Copyright (c) 2014 Ben Rettig. All rights reserved.
//

#import "PastTableViewController.h"
#import "Past.h"
#import "PastPage.h"
#import "Utilities.h"
#import "MBProgressHUD.h"

@interface PastTableViewController ()

@property (strong, nonatomic) MBProgressHUD *progressLoader;
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, strong) NSString *sid;





@property (nonatomic, strong) UIBarButtonItem *addButton;




@end

@implementation PastTableViewController
@synthesize jsonArray,pastArray;

NetworkStatus networkStatus;

- (void)viewDidLoad
{
    [super viewDidLoad];
// a = indexing title by uilabel
    NSArray *a = @[@"Baseball",@"Basketball",@"Football",@"Golf",@"Soccer",@"Tennis",@"Track/CC"];
    NSArray *s = @[@"1s",@"2s",@"3s",@"4s",@"5s",@"6s",@"7s"];
    
    // n = title of scene
    NSArray *n = @[@"Baseball",
                   @"Basketball",
                   @"Football",
                   @"Golf",
                   @"Soccer",
                   @"Tennis",
                   @"Track/Cross Country"];

    NSInteger index = [a indexOfObject:self.selectedLetter];
    
    self.title = n[index];
    

    
    

    self.sid   = s[index];

    NSString *urlString =
    [NSString stringWithFormat:@"http://www.fridaynightfans.com/kilgore/s/%@/%@.php",
     self.sid,
     self.sid];
    
    self.url = [NSURL URLWithString:urlString];
    
    if (Reachability.reachabilityForInternetConnection.currentReachabilityStatus == NotReachable)
        return [Utilities showAlertWithTitle:@"No Network"
                                  andMessage:@"No Network Error.Application is in offline mode."
                                withDelegate:nil];
    
    self.progressLoader = [MBProgressHUD.alloc initWithView:self.view];
    
    [self.view addSubview:self.progressLoader];
    
    self.progressLoader.labelText = @"Loading...";
    self.progressLoader.color     = UIColor.redColor;
    
    [self.progressLoader show:YES];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    dispatch_queue_t backgroundQueue = dispatch_queue_create("com.averma.laodData.bgqueue", NULL);
    
    dispatch_async(backgroundQueue, ^(void)
    {
        // Retrieve data in BG queue, otherwise it was blocking main thread.
        [self retrieveData];
    });
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark - Tableview delegates & dataSource

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70.f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection: (NSInteger)section
{
    return pastArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *CellIdentifier = @"Cellpast";
//    PastCell *cell = (PastCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    PastCell *cell = (PastCell *)[PastCell.alloc initWithStyle:UITableViewCellStyleDefault
                                               reuseIdentifier:CellIdentifier];
    
    Past *pastObject = [pastArray objectAtIndex:indexPath.row];
    
    pastObject.delegate = cell;
    
    cell.pYear.text = pastObject.pastYear;

    if (pastObject.pastPhoto)
        [cell.pastImageView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    cell.pastImageView.image = pastObject.pastPhoto;
    
     //Accessory
     cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
     return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"pushPastPage"
                              sender:self];
}

#pragma - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"%@", segue.identifier);
    
    if ([segue.identifier isEqualToString:@"pushPastPage"])
    {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        
        PastPage *_vc = segue.destinationViewController;
        
        Past *object = [pastArray objectAtIndex:indexPath.row];
        
        _vc.currentPast    = object;
        _vc.selectedLetter = self.selectedLetter;
    }
}

- (void) retrieveData;
{
    networkStatus = Reachability.reachabilityForInternetConnection.currentReachabilityStatus;
    
    NSData *jsonData = nil;
    
    if (networkStatus == NotReachable)
        jsonData =
        [NSData.alloc initWithData:[Utilities getFileDataFromCacheWithName:self.sid
                                                             withExtension:@"json"]];

    else
    {
        jsonData = [NSData.alloc initWithContentsOfURL:self.url];
        
        if (jsonData)        
            [Utilities saveFileDataToCache:jsonData
                                  withName:self.sid
                             withExtension:@"json"];
    }
    
    if (jsonData)
        jsonArray = [NSJSONSerialization JSONObjectWithData:jsonData
                                                    options:kNilOptions
                                                      error:nil];
    
    if (jsonArray == nil || jsonArray.count == 0)
    {
        dispatch_async(dispatch_get_main_queue(), ^(void)
        {
            [self.progressLoader removeFromSuperview];
        
            self.progressLoader = nil;
            
            [self dataErrorAlert];
        });
                       
        return;
    }
    
    //Set up past array
    pastArray = NSMutableArray.new;
    
    //Loop through jsonArray
    for (int i = 0; i < jsonArray.count; i++)
    {
        Past *past = Past.new;
        
        //create past object
        past.pastID             = jsonArray[i][@"id"];
        past.pastYear           = jsonArray[i][@"Year"];
        past.pastRecord         = jsonArray[i][@"Record"];
        past.pastPhotoURLString = jsonArray[i][@"Team Photo"];
        past.sport              = jsonArray[i][@"Sport"];
        past.pastFB             = jsonArray[i][@"Facebook Wall"];
        past.wordpress          = jsonArray[i][@"Wordpress"];
        past.sid                = self.sid;

        [pastArray addObject:past];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^(void)
    {
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        
        [self.progressLoader removeFromSuperview];
        
        self.progressLoader = nil;
        
        //Reload our table view
        [self.tableView reloadData];
    }) ;
}

-(void)dataErrorAlert
{
    [Utilities showAlertWithTitle:@"Error"
                       andMessage:@"Data loading error. Sorry."
                     withDelegate:nil];
}

@end