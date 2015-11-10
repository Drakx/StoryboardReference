//
//  NewStoryboardViewController.m
//  StoryboardReference
//
//  Created by Kai Windle on 10/11/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//

#import "NewStoryboardViewController.h"

@interface NewStoryboardViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblSelectedRow;
@end

@implementation NewStoryboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.lblSelectedRow.text = self.selectedRow;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
