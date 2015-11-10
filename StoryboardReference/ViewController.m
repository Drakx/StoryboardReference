//
//  ViewController.m
//  StoryboardReference
//
//  Created by Kai Windle on 10/11/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//

#import "ViewController.h"
#import "NewStoryboardViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - UITableView Datasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %ld", (long)indexPath.row];
    
    return cell;
}

#pragma mark - UITableView Delegate methods
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"newSBSegue"]) {
        
        // Lets pass some info
        NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
        NSString *selectedIndex = [NSString stringWithFormat:@"Row: %ld", (long)selectedIndexPath.row];
        
        NewStoryboardViewController *destController = segue.destinationViewController;
        destController.selectedRow = selectedIndex;
    }
}

@end
