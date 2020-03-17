

//  CustomTableViewController.m

//  CustomTable

//

//  Created by Simon on 7/12/13.

//  Copyright (c) 2013 Appcoda. All rights reserved.

//



#import "RecipeTableViewController.h"

#import "RecipeTableCell.h"

#import "RecipeDetailViewController.h"

#import "Recipe.h"



@interface RecipeTableViewController ()



@property (weak, nonatomic) IBOutlet UISegmentedControl *mSegmentTier;
@end



@implementation RecipeTableViewController

{
    
    NSArray *recipes;
    NSArray *recipes1;
    NSArray *recipes2;
    NSArray *recipes3;
    
    NSArray *searchResults;
    
}





- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    
  
        
        self.edgesForExtendedLayout = UIRectEdgeAll;
        self.tableView.contentInset = UIEdgeInsetsMake(0., 0., CGRectGetHeight(self.tabBarController.tabBar.frame), 0);
    
    

    
    
    Recipe *recipe0 = [Recipe new];
    
    recipe0.name = @"Menu Tier 1";
    
    recipe0.prepTime = @"$10.71 per plate + 1 item of each catergory";
    
    recipe0.image = @"food.png";
    
    recipe0.ingredients = [NSArray arrayWithObjects:@"Includes one of each - ", @"Protien", @"Sauce", @"Veggie",@"Starches",@"Breads",@"Salads", @"Desserts",nil];
    
    
    
    
    
    Recipe *recipe1 = [Recipe new];
    
    recipe1.name = @"Oven- Baked Chicken";
    
    recipe1.prepTime = @"Tier 1 Protien";
    
    recipe1.image = @"oven-baked-chicken.jpg";
    
    recipe1.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil];
    
    
    
    Recipe *recipe2 = [Recipe new];
    
    recipe2.name = @"Slow-Braised Pork";
    
    recipe2.prepTime = @"Tier 1 Protien";
    
    recipe2.image = @"slow-braised-pork.jpg";
    
    recipe2.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
    
    
    
    Recipe *recipe3 = [Recipe new];
    
    recipe3.name = @"Crispy Fried Chicken";
    
    recipe3.prepTime = @"Tier 1 Protien";
    
    recipe3.image = @"fried-chicken.jpg";
    
    recipe3.ingredients = [NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil];
    
    
    
    Recipe *recipe4 = [Recipe new];
    
    recipe4.name = @"Juicy Tender Brisket";
    
    recipe4.prepTime = @"Tier 1 Protien";
    
    recipe4.image = @"juicy-tender-brisket.jpg";
    
    recipe4.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil];
    
    
    
    Recipe *recipe5 = [Recipe new];
    
    recipe5.name = @"Homemade BBQ Sauce";
    
    recipe5.prepTime = @"Tier 1 Sauce";
    
    recipe5.image = @"barbecue_sauce.jpg";
    
    recipe5.ingredients = [NSArray arrayWithObjects:@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham", @"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese", nil];
    
    
    
    Recipe *recipe6 = [Recipe new];
    
    recipe6.name = @"Rich Brown Gravy";
    
    recipe6.prepTime = @"Tier 1 Sauce";
    
    recipe6.image = @"rich-brown-gravy.jpg";
    
    recipe6.ingredients = [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil];
    
    
    
    Recipe *recipe7 = [Recipe new];
    
    recipe7.name = @"Cream of Mushroom";
    
    recipe7.prepTime = @"Tier 1 Sauce";
    
    recipe7.image = @"cream-of-mushroom.jpg";
    
    recipe7.ingredients = [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil];
    
    
    
    Recipe *recipe8 = [Recipe new];
    
    recipe8.name = @"Steamed Green Beans";
    
    recipe8.prepTime = @"Tier 1 Veggie";
    
    recipe8.image = @"steamed-green-beans.jpg";
    
    recipe8.ingredients = [NSArray arrayWithObjects:@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream", nil];
    
    
    
    Recipe *recipe9 = [Recipe new];
    
    recipe9.name = @"Slow-Cooked Cabbage";
    
    recipe9.prepTime = @"Tier 1 Veggie";
    
    recipe9.image = @"slow-cooked-cabbage.jpg";
    
    recipe9.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil];
    
    
    
    Recipe *recipe10 = [Recipe new];
    
    recipe10.name = @"Salad Bar";
    
    recipe10.prepTime = @"Tier 1 Veggie";
    
    recipe10.image = @"salad-bar.jpg";
    
    recipe10.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil];
    
    
    
    Recipe *recipe11 = [Recipe new];
    
    recipe11.name = @"Self-Serve Mixed Green";
    
    recipe11.prepTime = @"Tier 1 Veggie";
    
    recipe11.image = @"self-serve-mixed-greens.jpg";
    
    recipe11.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper", nil];
    
    
    
    Recipe *recipe12 = [Recipe new];
    
    recipe12.name = @"Steamed Broccoli";
    
    recipe12.prepTime = @"Tier 1 Veggie";
    
    recipe12.image = @"steamed-brocolli.jpg";
    
    recipe12.ingredients = [NSArray arrayWithObjects:@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops", nil];
    
    
    
    Recipe *recipe13 = [Recipe new];
    
    recipe13.name = @"Buttery Corn on the Cob";
    
    recipe13.prepTime = @"Tier 1 Veggie";
    
    recipe13.image = @"buttery-corn-on-the-cob.jpg";
    
    recipe13.ingredients = [NSArray arrayWithObjects:@"Green tea", nil];
    
    
    
    Recipe *recipe14 = [Recipe new];
    
    recipe14.name = @"Collard Greens";
    
    recipe14.prepTime = @"Tier 1 Veggie";
    
    recipe14.image = @"collard-greens.jpg";
    
    recipe14.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    
    
    Recipe *recipe15 = [Recipe new];
    
    recipe15.name = @"Mac + Cheese";
    
    recipe15.prepTime = @"Tier 1 Starch";
    
    recipe15.image = @"mac-cheese.jpg";
    
    recipe15.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    
    
    Recipe *recipe16 = [Recipe new];
    
    recipe16.name = @"Rice Ironi";
    
    recipe16.prepTime = @"Tier 1 Starch";
    
    recipe16.image = @"rice-a-roni.jpg";
    
    recipe16.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    Recipe *recipe17 = [Recipe new];
    
    recipe17.name = @"Baked Potatoes";
    
    recipe17.prepTime = @"Tier 1 Starch";
    
    recipe17.image = @"baked-potato.jpg";
    
    recipe17.ingredients = [NSArray arrayWithObjects:@"Includes one of each - ", @"Protien", @"Sauce", @"Veggie",@"Starches",@"Breads",@"Salads", @"Desserts",nil];
    
    
    
    
    
    Recipe *recipe18 = [Recipe new];
    
    recipe18.name = @"Rice Pilaf";
    
    recipe18.prepTime = @"Tier 1 Starch";
    
    recipe18.image = @"rice_pilaf.jpg";
    
    recipe18.ingredients = [NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil];
    
    
    
    Recipe *recipe19 = [Recipe new];
    
    recipe19.name = @"Roasted Red Potatoes";
    
    recipe19.prepTime = @"Tier 1 Starch";
    
    recipe19.image = @"roasted-red-potato.jpg";
    
    recipe19.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
    
    
    
    Recipe *recipe20 = [Recipe new];
    
    recipe20.name = @"Sweet Hawaiian Rolls";
    
    recipe20.prepTime = @"Tier 1 Bread";
    
    recipe20.image = @"sweet-hawaiian-rolls.jpg";
    
    recipe20.ingredients = [NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil];
    
    
    
    Recipe *recipe21 = [Recipe new];
    
    recipe21.name = @"Buttermilk Biscuits";
    
    recipe21.prepTime = @"Tier 1 Bread";
    
    recipe21.image = @"buttermilk_biscuits.jpg";
    
    recipe21.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil];
    
    
    
    Recipe *recipe22 = [Recipe new];
    
    recipe22.name = @"Sliced Bread";
    
    recipe22.prepTime = @"Tier 1 Bread";
    
    recipe22.image = @"sliced-bread.jpg";
    
    recipe22.ingredients = [NSArray arrayWithObjects:@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham", @"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese", nil];
    
    
    
    Recipe *recipe23 = [Recipe new];
    
    recipe23.name = @"Menu Tier 2";
    
    recipe23.prepTime = @"$17.31 per plate + 2 items from each catergory";
    
    recipe23.image = @"food";
    
    recipe23.ingredients = [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil];
    
    
    
    Recipe *recipe24 = [Recipe new];
    
    recipe24.name = @"Grill Veggie + Spinach Salad";
    
    recipe24.prepTime = @"Tier 2 Salad";
    
    recipe24.image = @"grill-salad-spinach-salad.jpg";
    
    recipe24.ingredients = [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil];
    
    
    
    Recipe *recipe25 = [Recipe new];
    
    recipe25.name = @"German Potato Salad";
    
    recipe25.prepTime = @"Tier 2 Salad";
    
    recipe25.image = @"german-potato-salad.jpg";
    
    recipe25.ingredients = [NSArray arrayWithObjects:@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream", nil];
    
    
    
    Recipe *recipe26 = [Recipe new];
    
    recipe26.name = @"Hors d'oeuvres";
    
    recipe26.prepTime = @"Tier 2 Salad";
    
    recipe26.image = @"hor-dourves.jpg";
    
    recipe26.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil];
    
    
    
    Recipe *recipe27 = [Recipe new];
    
    recipe27.name = @"Bacon Deviled Eggs";
    
    recipe27.prepTime = @"Tier 2 Salad";
    
    recipe27.image = @"bacon-deviled-eggs.jpg";
    
    recipe27.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil];
    
    
    
    Recipe *recipe28 = [Recipe new];
    
    recipe28.name = @"Party Meatballs";
    
    recipe28.prepTime = @"Tier 2 Salad";
    
    recipe28.image = @"party-meatballs.jpg";
    
    recipe28.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper", nil];
    
    
    
    Recipe *recipe29 = [Recipe new];
    
    recipe29.name = @"Crostino";
    
    recipe29.prepTime = @"Tier 2 Salad";
    
    recipe29.image = @"crostini.jpg";
    
    recipe29.ingredients = [NSArray arrayWithObjects:@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops", nil];
    
    
    
    Recipe *recipe30 = [Recipe new];
    
    recipe30.name = @"BBQ Beef Brats";
    
    recipe30.prepTime = @"Tier 2 Salad";
    
    recipe30.image = @"bbq-beef-brats.jpg";
    
    recipe30.ingredients = [NSArray arrayWithObjects:@"Green tea", nil];
    
    
    
    Recipe *recipe31 = [Recipe new];
    
    recipe31.name = @"Bread Pudding";
    
    recipe31.prepTime = @"Tier 2 Dessert";
    
    recipe31.image = @"bread-pudding.jpg";
    
    recipe31.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    
    
    Recipe *recipe32 = [Recipe new];
    
    recipe32.name = @"Rice Pudding";
    
    recipe32.prepTime = @"Tier 2 Dessert";
    
    recipe32.image = @"rice-pudding.jpg";
    
    recipe32.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    
    
    Recipe *recipe33 = [Recipe new];
    
    recipe33.name = @"Banana Pudding";
    
    recipe33.prepTime = @"Tier 2 Dessert";
    
    recipe33.image = @"banana-pudding.jpg";
    
    recipe33.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    Recipe *recipe34 = [Recipe new];
    
    recipe34.name = @"Menu Tier 3";
    
    recipe34.prepTime = @"$24.32 per plate +2 items of each catergory - (Open to request by customer)";
    
    recipe34.image = @"food";
    
    recipe34.ingredients = [NSArray arrayWithObjects:@"Includes two of each - ", @"Additional Options",@"Protien", @"Sauce", @"Veggie",@"Starches",@"Breads",@"Salads", @"Desserts",nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    Recipe *recipe36 = [Recipe new];
    
    recipe36.name = @"Mushroom Puffs";
    
    recipe36.prepTime = @"Tier 3 Additional Option";
    
    recipe36.image = @"mushroom-puffs.jpg";
    
    recipe36.ingredients = [NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil];
    
    
    
    Recipe *recipe37 = [Recipe new];
    
    recipe37.name = @"BBQ Chicken Pizza Squares";
    
    recipe37.prepTime = @"Tier 3 Additional Option";
    
    recipe37.image = @"bbq-chicken-pizza-squares.jpg";
    
    recipe37.ingredients = [NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil];
    
    
    
    Recipe *recipe38 = [Recipe new];
    
    recipe38.name = @"Shrimp Cocktail";
    
    recipe38.prepTime = @"Tier 3 Additional Option";
    
    recipe38.image = @"shrimp-cocktail.jpg";
    
    recipe38.ingredients = [NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil];
    
    
    
    Recipe *recipe39 = [Recipe new];
    
    recipe39.name = @"Grilled Chicken Breast";
    
    recipe39.prepTime = @"Tier 3 Protien";
    
    recipe39.image = @"grilled-chicken-breast.jpg";
    
    recipe39.ingredients = [NSArray arrayWithObjects:@"1 unsliced loaf (1 pound) French bread", @"4 tablespoons butter", @"2 tablespoons mayonnaise", @"8 thin slices deli ham", @"1 large tomato, sliced", @"1 small onion", @"8 eggs", @"8 slices cheddar cheese", nil];
    
    
    
    Recipe *recipe40 = [Recipe new];
    
    recipe40.name = @"Tinder Beef Tips";
    
    recipe40.prepTime = @"Tier 3 Protien";
    
    recipe40.image = @"beef-tips.jpg";
    
    recipe40.ingredients = [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil];
    
    
    
    Recipe *recipe41 = [Recipe new];
    
    recipe41.name = @"Fork Tender Ribs";
    
    recipe41.prepTime = @"Tier 3 Protien";
    
    recipe41.image = @"fork-tender-ribs.jpg";
    
    recipe41.ingredients = [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil];
    
    
    
    
    
    
    
    
    
    
    
    Recipe *recipe43 = [Recipe new];
    
    recipe43.name = @"Ribeyes Steak";
    
    recipe43.prepTime = @"Tier 3 Protien";
    
    recipe43.image = @"ribeyes-steak.jpg";
    
    recipe43.ingredients = [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil];
    
    
    
    Recipe *recipe44 = [Recipe new];
    
    recipe44.name = @"Macaroni Salad";
    
    recipe44.prepTime = @"Tier 3 Salad";
    
    recipe44.image = @"macaroni-salad.jpg";
    
    recipe44.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil];
    
    
    
    Recipe *recipe45 = [Recipe new];
    
    recipe45.name = @"Tomato Pasta Salad";
    
    recipe45.prepTime = @"Tier 3 Salad";
    
    recipe45.image = @"tomato-pasta-salad.jpg";
    
    recipe45.ingredients = [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper", nil];
    
    
    
    Recipe *recipe46 = [Recipe new];
    
    recipe46.name = @"Spicy Southwest Slaw";
    
    recipe46.prepTime = @"Tier 3 Salad";
    
    recipe46.image = @"spicy-southwest-slaw.jpg";
    
    recipe46.ingredients = [NSArray arrayWithObjects:@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops", nil];
    
    
    
    Recipe *recipe47 = [Recipe new];
    
    recipe47.name = @"Green Bean Casserole";
    
    recipe47.prepTime = @"Tier 3 Veggie";
    
    recipe47.image = @"green-bean-casserole.jpg";
    
    recipe47.ingredients = [NSArray arrayWithObjects:@"Green tea", nil];
    
    
    
    Recipe *recipe48 = [Recipe new];
    
    recipe48.name = @"Broccoli Casserole";
    
    recipe48.prepTime = @"Tier 3 Veggie";
    
    recipe48.image = @"broccoli-casserole.jpg";
    
    recipe48.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    
    
    Recipe *recipe49 = [Recipe new];
    
    recipe49.name = @"Grilled Zucchini + Squash";
    
    recipe49.prepTime = @"Tier 3 Veggie";
    
    recipe49.image = @"grilled-zucchini-squash.jpg";
    
    recipe49.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    
    
    Recipe *recipe50 = [Recipe new];
    
    recipe50.name = @"Bechemel Sauce";
    
    recipe50.prepTime = @"Tier 3 Sauces";
    
    recipe50.image = @"cream-of-mushroom.jpg";
    
    recipe50.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
    
    
    Recipe *recipe51 = [Recipe new];
    
    recipe51.name = @"Brown Sauce";
    
    recipe51.prepTime = @"Tier 3 Sauces";
    
    recipe51.image = @"rich-brown-gravy.jpg";
    
    recipe51.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    
    
    Recipe *recipe52 = [Recipe new];
    
    recipe52.name = @"Tomato Sauce";
    
    recipe52.prepTime = @"Tier 3 Sauces";
    
    recipe52.image = @"tomato-sauce.jpg";
    
    recipe52.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    Recipe *recipe54 = [Recipe new];
    
    recipe54.name = @"Bacon + Shrimp Mac";
    
    recipe54.prepTime = @"Tier 3 Starch";
    
    recipe54.image = @"bacon-shrimp-mac.jpg";
    
    recipe54.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
    
    
    Recipe *recipe55 = [Recipe new];
    
    recipe55.name = @"Mushroom Risotto";
    
    recipe55.prepTime = @"Tier 3 Starch";
    
    recipe55.image = @"mushroom-risotto.jpg";
    
    recipe55.ingredients = [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil];
    
    
    
    Recipe *recipe56 = [Recipe new];
    
    recipe56.name = @"Twice-Baked Loaded Potato";
    
    recipe56.prepTime = @"Tier 3 Starch";
    
    recipe56.image = @"twice-baked-loaded-potato.jpg";
    
    recipe56.ingredients = [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil];
    
    
    
    Recipe *recipe57 = [Recipe new];
    
    recipe57.name = @"Sweet Cornbread Muffins";
    
    recipe57.prepTime = @"Tier 3 Starch";
    
    recipe57.image = @"cornbread-muffins.jpg";
    
    recipe57.ingredients = [NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil];
    
    
    
    
    
    
    

    
    
    
    
    
    
    recipes1 = [NSArray arrayWithObjects:recipe0,recipe1,recipe2,recipe3,recipe4,recipe5,recipe6,recipe7,recipe8,recipe9,recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16,recipe17,recipe18,recipe19,recipe20,recipe21,recipe22, nil];

    recipes2 = [NSArray arrayWithObjects:recipe23, recipe24, recipe25, recipe26, recipe27, recipe28, recipe29, recipe30, recipe31, recipe32, recipe33, nil];

    recipes3 = [NSArray arrayWithObjects:recipe34,  recipe36, recipe37, recipe38, recipe39, recipe40, recipe41, recipe43, recipe44, recipe45, recipe46, recipe47, recipe48, recipe49,recipe50, recipe51,recipe52,             recipe54,recipe55,recipe56,recipe57, nil];

//    recipes = [NSArray arrayWithObjects:recipe0,recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16,recipe17,recipe18, recipe19, recipe20, recipe21, recipe22, recipe23, recipe24, recipe25, recipe26, recipe27, recipe28, recipe29, recipe30, recipe31, recipe32, recipe33, recipe34,  recipe36, recipe37, recipe38, recipe39, recipe40, recipe41, recipe43, recipe44, recipe45, recipe46, recipe47, recipe48, recipe49,recipe50, recipe51,recipe52,             recipe54,recipe55,recipe56,recipe57, nil];
    
    recipes = recipes1;

    
    
}



- (void)didReceiveMemoryWarning

{
    
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        
        return [searchResults count];
        
        
        
    } else {
        
        return [recipes count];
        
    }
    
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    return 71;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    static NSString *CellIdentifier = @"CustomTableCell";
    
    RecipeTableCell *cell = (RecipeTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    
    // Configure the cell...
    
    if (cell == nil) {
        
        cell = [[RecipeTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    
    
    // Display recipe in the table cell
    
    Recipe *recipe = nil;
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        
        recipe = [searchResults objectAtIndex:indexPath.row];
        
    } else {
        
        recipe = [recipes objectAtIndex:indexPath.row];
        
    }
    
    
    
    cell.nameLabel.text = recipe.name;
    
    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
    
    cell.prepTimeLabel.text = recipe.prepTime;
    
    
    
    return cell;
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        
        NSIndexPath *indexPath = nil;
        
        Recipe *recipe = nil;
        
        
        
        if (self.searchDisplayController.active) {
            
            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            
            recipe = [searchResults objectAtIndex:indexPath.row];
            
        } else {
            
            indexPath = [self.tableView indexPathForSelectedRow];
            
            recipe = [recipes objectAtIndex:indexPath.row];
            
        }
        
        
        
        RecipeDetailViewController *destViewController = segue.destinationViewController;
        
        destViewController.recipe = recipe;
        
    }
    
}



- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope

{
    
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
    
    searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
    
}



-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString

{
    
    [self filterContentForSearchText:searchString
     
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     
                                                     selectedScopeButtonIndex]]];
    
    
    
    return YES;
    
}

- (IBAction)tierchanged:(id)sender {
    int selectedIndex = self.mSegmentTier.selectedSegmentIndex;
    
    if ( selectedIndex == 0 )
        recipes = recipes1;
    else if ( selectedIndex == 1 )
        recipes = recipes2;
    else if ( selectedIndex == 2 )
        recipes = recipes3;
    
    [self.tableView reloadData];
}






@end