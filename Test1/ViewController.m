//
//  ViewController.m
//  Test1
//
//  Created by qingjie on 9/30/15.
//  Copyright © 2015 qingjie. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"

@interface ViewController ()

@end

@implementation ViewController

NSArray *ary0 = nil;
NSArray *ary1 = nil;
NSArray *ary2 = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     ary0 = [[NSArray alloc] initWithObjects:@"Bear0",  @"Buffalo0", @"Camel0",nil];
     ary1 = [[NSArray alloc] initWithObjects:@"Bear1",  @"Buffalo1", @"Camel1",nil];
     ary2 = [[NSArray alloc] initWithObjects:@"Bear2",  @"Buffalo2", @"Camel2",nil];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
     NSLog(@"viewDidDisappear");
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"---row ==  =====,%ld",(long)indexPath.row);
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ViewController1 *v = segue.destinationViewController;
    [v setTt:@"Syracuse"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (section == 0) {
        return ary0.count;
    } else if (section == 1) {
        return ary1.count;
    } else {
        return ary2.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = nil;
     if (indexPath.section == 0) {
         if (indexPath.row == 0) {
             UITableViewCell *cell0 = [tableView dequeueReusableCellWithIdentifier:@"Cell0" forIndexPath:indexPath];
             cell0.textLabel.text = ary0[indexPath.row];
             cell = cell0;
         }else if(indexPath.row == 1){
             UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
             cell1.textLabel.text = ary1[indexPath.row];
             cell = cell1;
         }else{
             UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
             cell2.textLabel.text = ary2[indexPath.row];
             cell = cell2;
         }

     }else if(indexPath.section == 1){
         if (indexPath.row == 0) {
             UITableViewCell *cell0 = [tableView dequeueReusableCellWithIdentifier:@"Cell0" forIndexPath:indexPath];
             cell0.textLabel.text = ary0[indexPath.row];
             cell = cell0;
         }else if(indexPath.row == 1){
             UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
             cell1.textLabel.text = ary1[indexPath.row];
             cell = cell1;
         }else{
             UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
             cell2.textLabel.text = ary2[indexPath.row];
             cell = cell2;
         }

     }else{
         if (indexPath.row == 0) {
             UITableViewCell *cell0 = [tableView dequeueReusableCellWithIdentifier:@"Cell0" forIndexPath:indexPath];
             cell0.textLabel.text = ary0[indexPath.row];
             cell = cell0;
         }else if(indexPath.row == 1){
             UITableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"Cell1" forIndexPath:indexPath];
             cell1.textLabel.text = ary1[indexPath.row];
             cell = cell1;
         }else{
             UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"Cell2" forIndexPath:indexPath];
             cell2.textLabel.text = ary2[indexPath.row];
             cell = cell2;
         }

     }
    
    return cell;
}



@end
