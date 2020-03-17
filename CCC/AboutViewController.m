#import "AboutViewController.h"

@implementation AboutViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
   // self.scrollView = [[UIScrollView alloc] init];
    // self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
  //   self.scrollView.backgroundColor = [UIColor blueColor];
    // [self.view addSubview:self.scrollView];
    

    
    
    
    
    
  //   self.contentView = [[UIView alloc] init];
  //   self.contentView.backgroundColor = [UIColor redColor];
   //  self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
   //  [self.scrollView addSubview:self.contentView];
    
    
    
    //UIImageView *backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background"]];
    //[self.view addSubview:backgroundView];
    
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];  }

    
    
    //Auto Layout Constraints for scrolling content view
    
  //   NSDictionary *tmpViewsDictionary = @{@"scrollView":self.scrollView,
                      //                   @"contentView":self.contentView};
    
  //  [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(0)-[scrollView]-(0)-|" options:0 metrics:nil views:tmpViewsDictionary]];
 //   [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(0)-[scrollView]-(0)-|" options:0 metrics:nil views:tmpViewsDictionary]];
    
 //   [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(0)-[contentView]-(0)-|" options:0 metrics:nil views:tmpViewsDictionary]];
 //   [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-(0)-[contentView]-(0)-|" options:0 metrics:nil views:tmpViewsDictionary]];
    
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
    
//    [self addContentSubViews]; }

// - (void)addContentSubViews{
    
 //   self.topLabel = [[UILabel alloc] init];
  //  self.topLabel.translatesAutoresizingMaskIntoConstraints = NO;
  //  self.topLabel.numberOfLines = 0;
  //  self.topLabel.textAlignment = NSTextAlignmentCenter;
 //   self.topLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    self.topLabel.text = @"Some text label. that may have several lines";
//    self.topLabel.textColor = [UIColor blackColor];
//    [self.contentView addSubview:self.topLabel];
    
 //   self.boxView = [[UIView alloc] init];
  //  self.boxView.translatesAutoresizingMaskIntoConstraints = NO;
//    self.boxView.backgroundColor = [UIColor lightGrayColor];
//    [self.contentView addSubview:self.boxView];
    
//    self.bottomLabel = [[UILabel alloc] init];
//    self.bottomLabel.numberOfLines = 0;
//    self.bottomLabel.textAlignment = NSTextAlignmentCenter;
//    self.bottomLabel.lineBreakMode = NSLineBreakByWordWrapping;
//    self.bottomLabel.translatesAutoresizingMaskIntoConstraints = NO;
//    self.bottomLabel.text = [self bottomLabelText];
//    self.bottomLabel.textColor = [UIColor blackColor];
//    [self.contentView addSubview:self.bottomLabel];
    
//    [self addContentSubViewConstraints];
    
// }

-(IBAction)OpenWebsite:(id)sender {
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.gofundme.com/tmga5nmk"]];
}


//- (NSString *)bottomLabelText{
    
//    return @"Mauris utinam singularis nostrud et vel et defui aliquip duis. Regula suscipere vel ratis damnum in vindico voco verto antehabeo sit bene. Singularis decet capto luptatum sit delenit suscipit aliquip consequat quis nullus ex.Gemino foras te pala consequat refero abbas in vel. Eum nimis commoveo eros eu. Facilisi in pagus gemino exputo quadrum conventio erat. Haero loquor ut quis sudo immitto adsum sit multo proprius esse.Iustum esse si reprobo utrum et vero ad loquor ne. Duis in nulla. Nutus autem brevitas meus iriure verto ullamcorper velit facilisi. Scisco minim damnum quis transverbero eligo nunc nibh tego.Pala vereor uxor ratis macto enim feugiat iustum os delenit. Antehabeo valetudo vel. Neo patria et iaceo nutus. Ut vero veniam ventosus duis consequat verto. Opto neque nonummy. Duis scisco quidne vero nostrud quidne exputo adsum meus qui. Zelus uxor nobis consequat uxor augue decet. Indoles populus consequat iusto et facilisis pecus nunc feugiat vel valde. Delenit sit nisl indoles minim incassum utinam epulae quae euismod dolor tation. Multo ut vero indoles exputo commoveo. Scisco molior tamen ille. Luptatum cogo accumsan luptatum eu fatua usitas. Molior bene elit paratus sed consequat augue veniam probo patria. Nutus quidem feugiat nonummy ad delenit facilisis ea quibus suscipit. Refero utrum torqueo feugait blandit aliquip ad vulputate cui ideo. Nunc vulputate paulatim dolor volutpat vel brevitas. Reprobo iusto vindico. Qui quis commodo augue nostrud nulla eu consequat minim at imputo. Iriure ullamcorper feugait genitus scisco in scisco obruo jus. Consequat abdo quae dignissim iusto suscipere nulla ad jugis duis virtus. Enim vulputate luptatum in voco haero. Feugiat euismod validus sudo uxor abbas. Ingenium obruo neo. Blandit consequat luptatum euismod sino utrum tego suscipit dignissim suscipit. Sed gilvus utrum in capto Velit ventosus adsum delenit et. Vel verto quidem sit qui vulputate ut autem. Accumsan distineo wisi populus hendrerit ne indoles ille facilisis ut erat hendrerit. Populus sino velit premo dolore neque. Augue ulciscor blandit venio facilisi capto quae praesent ad. Vero opto interdico a roto eros abico. Olim eros ad comis incassum wisi consequat dolus molior oppeto in voco. Genitus caecus duis usitas nisl illum suscipit nulla importunus melior autem. Ulciscor tum quia feugiat paratus olim quod quidem. Duis consequat refoveo nulla refoveo nulla wisi nostrud velit. Neque et caecus ne ad occuro nutus diam vulputate. Populus eros quis ne at quia sit luctus. Adipiscing verto olim et virtus luctus nimis foras nisl in eum mos. Imputo saepius lenis reprobo vero. Aliquam probo ea imputo vicis et suscipere. Vulpes iusto imputo dignissim. Dolore aptent feugiat qui et nibh vicis modo abigo. Sit verto minim feugiat nulla praemitto caecus capto lucidus ullamcorper. Fere eu duis facilisi torqueo.";  }

// - (void)addContentSubViewConstraints{
    
   //  NSDictionary *tmpViewsDictionary = @{@"topLabel":self.topLabel,
                                     //    @"boxView":self.boxView,
                                    //     @"bottomLabel":self.bottomLabel};
    
  //  [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(60)-[topLabel]-[boxView(86)]-[bottomLabel]-|" options:0 metrics:nil views:tmpViewsDictionary]];
    
//    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[topLabel]-|" options:0 metrics:nil views:tmpViewsDictionary]];
//    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[bottomLabel]-|" options:0 metrics:nil views:tmpViewsDictionary]];
//    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[boxView]-|" options:0 metrics:nil views:tmpViewsDictionary]];
    
//    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.boxView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    


@end